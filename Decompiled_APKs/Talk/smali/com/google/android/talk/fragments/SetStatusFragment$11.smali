.class Lcom/google/android/talk/fragments/SetStatusFragment$11;
.super Ljava/lang/Object;
.source "SetStatusFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/SetStatusFragment;->initializeFromImSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/SetStatusFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$11;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1054
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$11;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {v1}, Lcom/google/android/talk/fragments/SetStatusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1055
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1056
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$11;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    #calls: Lcom/google/android/talk/fragments/SetStatusFragment;->bindViews()V
    invoke-static {v1}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$800(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    .line 1058
    :cond_0
    return-void
.end method
