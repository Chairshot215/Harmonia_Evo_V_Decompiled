.class Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl$4;
.super Ljava/lang/Object;
.source "RosterListenerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->schedulePresenceNotify()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl$4;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl$4;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->notifyPresenceChanged()Z

    .line 209
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl$4;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mPresenceUpdateScheduled:Z
    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->access$302(Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;Z)Z

    .line 210
    return-void
.end method
