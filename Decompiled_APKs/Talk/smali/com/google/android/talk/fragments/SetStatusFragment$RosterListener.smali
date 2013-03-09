.class Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener;
.super Lcom/google/android/gtalkservice/IRosterListener$Stub;
.source "SetStatusFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/SetStatusFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RosterListener"
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
    .line 208
    invoke-direct {p0}, Lcom/google/android/gtalkservice/IRosterListener$Stub;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener;->mFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    .line 210
    iput-object p2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener;->mActivity:Landroid/app/Activity;

    .line 211
    return-void
.end method


# virtual methods
.method public clearRefs()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener;->mFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    .line 215
    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener;->mActivity:Landroid/app/Activity;

    .line 216
    return-void
.end method

.method public presenceChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "contact"

    .prologue
    .line 224
    return-void
.end method

.method public rosterChanged()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method public selfPresenceChanged()V
    .locals 3

    .prologue
    .line 228
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener;->mFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    .line 229
    .local v1, s:Lcom/google/android/talk/fragments/SetStatusFragment;
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener;->mActivity:Landroid/app/Activity;

    .line 230
    .local v0, a:Landroid/app/Activity;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    new-instance v2, Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener$1;

    invoke-direct {v2, p0}, Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener$1;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
