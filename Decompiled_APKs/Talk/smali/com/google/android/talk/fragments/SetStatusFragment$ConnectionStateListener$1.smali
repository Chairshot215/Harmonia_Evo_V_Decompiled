.class Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener$1;
.super Ljava/lang/Object;
.source "SetStatusFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;->connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener$1;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener$1;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;

    iget-object v0, v0, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;->mFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    if-nez v0, :cond_0

    .line 282
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener$1;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;

    iget-object v0, v0, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;->mFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    #calls: Lcom/google/android/talk/fragments/SetStatusFragment;->enableUI()V
    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$100(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    goto :goto_0
.end method
