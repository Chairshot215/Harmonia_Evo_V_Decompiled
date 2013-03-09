.class Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener$1;
.super Ljava/lang/Object;
.source "SetStatusFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener;->selfPresenceChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener$1;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener$1;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener;

    iget-object v0, v0, Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener;->mFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener$1;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener;

    iget-object v0, v0, Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener;->mFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    #calls: Lcom/google/android/talk/fragments/SetStatusFragment;->initialize()V
    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$000(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    goto :goto_0
.end method
