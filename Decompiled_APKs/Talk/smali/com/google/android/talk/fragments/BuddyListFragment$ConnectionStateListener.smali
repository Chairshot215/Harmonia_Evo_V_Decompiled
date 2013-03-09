.class Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;
.super Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;
.source "BuddyListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionStateListener"
.end annotation


# instance fields
.field mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;-><init>()V

    .line 507
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 508
    return-void
.end method


# virtual methods
.method public clearRefs()V
    .locals 1

    .prologue
    .line 511
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 512
    return-void
.end method

.method public connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
    .locals 4
    .parameter "state"
    .parameter "error"
    .parameter "accountId"
    .parameter "username"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 518
    .local v0, b:Lcom/google/android/talk/fragments/BuddyListFragment;
    if-nez v0, :cond_0

    .line 550
    :goto_0
    return-void

    .line 522
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v1

    .line 524
    .local v1, connState:I
    packed-switch v1, :pswitch_data_0

    .line 539
    iget-object v2, v0, Lcom/google/android/talk/fragments/BuddyListFragment;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener$2;

    invoke-direct {v3, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener$2;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 527
    :pswitch_0
    iget-object v2, v0, Lcom/google/android/talk/fragments/BuddyListFragment;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener$1;

    invoke-direct {v3, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener$1;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 524
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
