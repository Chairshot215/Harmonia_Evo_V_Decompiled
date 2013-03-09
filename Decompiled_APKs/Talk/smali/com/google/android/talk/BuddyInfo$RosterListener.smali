.class Lcom/google/android/talk/BuddyInfo$RosterListener;
.super Lcom/google/android/gtalkservice/IRosterListener$Stub;
.source "BuddyInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/BuddyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RosterListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/BuddyInfo;


# direct methods
.method constructor <init>(Lcom/google/android/talk/BuddyInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/talk/BuddyInfo$RosterListener;->this$0:Lcom/google/android/talk/BuddyInfo;

    invoke-direct {p0}, Lcom/google/android/gtalkservice/IRosterListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public presenceChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "contact"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/talk/BuddyInfo$RosterListener;->this$0:Lcom/google/android/talk/BuddyInfo;

    #calls: Lcom/google/android/talk/BuddyInfo;->startQuery()V
    invoke-static {v0}, Lcom/google/android/talk/BuddyInfo;->access$000(Lcom/google/android/talk/BuddyInfo;)V

    .line 108
    return-void
.end method

.method public rosterChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    return-void
.end method

.method public selfPresenceChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 116
    return-void
.end method
