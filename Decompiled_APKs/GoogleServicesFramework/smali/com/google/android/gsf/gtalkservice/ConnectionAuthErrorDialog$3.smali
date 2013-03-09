.class Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog$3;
.super Ljava/lang/Object;
.source "ConnectionAuthErrorDialog.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog$3;->this$0:Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "component"
    .parameter "service"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog$3;->this$0:Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;

    invoke-static {p2}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v1

    #setter for: Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->mService:Lcom/google/android/gtalkservice/IGTalkService;
    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->access$102(Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;Lcom/google/android/gtalkservice/IGTalkService;)Lcom/google/android/gtalkservice/IGTalkService;

    .line 79
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog$3;->this$0:Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;

    #calls: Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->loginSession()V
    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->access$200(Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog$3;->this$0:Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->finish()V

    .line 82
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "component"

    .prologue
    .line 84
    return-void
.end method
