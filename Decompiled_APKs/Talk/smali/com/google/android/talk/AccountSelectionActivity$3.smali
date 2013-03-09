.class Lcom/google/android/talk/AccountSelectionActivity$3;
.super Ljava/lang/Object;
.source "AccountSelectionActivity.java"

# interfaces
.implements Lcom/google/android/talk/ServiceAvailableRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AccountSelectionActivity;->registerForServiceStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/AccountSelectionActivity;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AccountSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 754
    iput-object p1, p0, Lcom/google/android/talk/AccountSelectionActivity$3;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/google/android/gtalkservice/IGTalkService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 757
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity$3;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    #calls: Lcom/google/android/talk/AccountSelectionActivity;->serviceStateChanged(Lcom/google/android/gtalkservice/IGTalkService;)V
    invoke-static {v0, p1}, Lcom/google/android/talk/AccountSelectionActivity;->access$1200(Lcom/google/android/talk/AccountSelectionActivity;Lcom/google/android/gtalkservice/IGTalkService;)V

    .line 758
    return-void
.end method
