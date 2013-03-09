.class Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;
.super Ljava/lang/Object;
.source "SetStatusFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/SetStatusFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatusItem"
.end annotation


# instance fields
.field mCustomPresence:Z

.field mInvisible:Z

.field mRunnable:Ljava/lang/Runnable;

.field mShow:Lcom/google/android/gtalkservice/Presence$Show;

.field mStatus:Ljava/lang/String;

.field mStatusResourceId:I

.field final synthetic this$0:Lcom/google/android/talk/fragments/SetStatusFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment;Ljava/lang/String;Lcom/google/android/gtalkservice/Presence$Show;ZIZ)V
    .locals 0
    .parameter
    .parameter "status"
    .parameter "show"
    .parameter "invisible"
    .parameter "statusResourceId"
    .parameter "custom"

    .prologue
    .line 655
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    iput-object p2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->mStatus:Ljava/lang/String;

    .line 657
    iput p5, p0, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->mStatusResourceId:I

    .line 658
    iput-object p3, p0, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    .line 659
    iput-boolean p4, p0, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->mInvisible:Z

    .line 660
    iput-boolean p6, p0, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->mCustomPresence:Z

    .line 661
    return-void
.end method


# virtual methods
.method public setClickRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "runnable"

    .prologue
    .line 669
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->mRunnable:Ljava/lang/Runnable;

    .line 670
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->mStatus:Ljava/lang/String;

    return-object v0
.end method
