.class Lcom/google/android/gsf/gtalkservice/gtalk/ImSession$1;
.super Ljava/lang/Object;
.source "ImSession.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable",
        "<",
        "Lcom/google/android/gtalkservice/IConnectionStateListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/google/android/gtalkservice/IConnectionStateListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->notifyListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V
    invoke-static {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->access$000(Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;Lcom/google/android/gtalkservice/IConnectionStateListener;)V

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    check-cast p1, Lcom/google/android/gtalkservice/IConnectionStateListener;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession$1;->call(Lcom/google/android/gtalkservice/IConnectionStateListener;)Z

    move-result v0

    return v0
.end method
