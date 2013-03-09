.class Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;
.super Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;
.source "SetStatusFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/SetStatusFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionStateListener"
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mFragment:Lcom/google/android/talk/fragments/SetStatusFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment;Landroid/app/Activity;)V
    .locals 0
    .parameter "fragment"
    .parameter "activity"

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;->mFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    .line 253
    iput-object p2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;->mActivity:Landroid/app/Activity;

    .line 254
    return-void
.end method


# virtual methods
.method public clearRefs()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;->mFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    .line 258
    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;->mActivity:Landroid/app/Activity;

    .line 259
    return-void
.end method

.method public connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
    .locals 4
    .parameter "state"
    .parameter "error"
    .parameter "accountId"
    .parameter "username"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 264
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;->mFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    .line 265
    .local v1, s:Lcom/google/android/talk/fragments/SetStatusFragment;
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;->mActivity:Landroid/app/Activity;

    .line 267
    .local v0, a:Landroid/app/Activity;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    monitor-enter p0

    .line 272
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 287
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener$2;

    invoke-direct {v3, p0}, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener$2;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 298
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 275
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener$1;

    invoke-direct {v3, p0}, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener$1;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
