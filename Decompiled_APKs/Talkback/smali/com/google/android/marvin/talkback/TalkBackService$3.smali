.class Lcom/google/android/marvin/talkback/TalkBackService$3;
.super Landroid/database/ContentObserver;
.source "TalkBackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/TalkBackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/marvin/talkback/TalkBackService;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/TalkBackService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/TalkBackService$3;->this$0:Lcom/google/android/marvin/talkback/TalkBackService;

    .line 872
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 876
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService$3;->this$0:Lcom/google/android/marvin/talkback/TalkBackService;

    invoke-virtual {v2}, Lcom/google/android/marvin/talkback/TalkBackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "touch_exploration_enabled"

    .line 875
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 878
    .local v0, isEnabled:Z
    :goto_0
    if-nez v0, :cond_1

    .line 886
    :goto_1
    return-void

    .end local v0           #isEnabled:Z
    :cond_0
    move v0, v1

    .line 875
    goto :goto_0

    .line 883
    .restart local v0       #isEnabled:Z
    :cond_1
    iget-object v1, p0, Lcom/google/android/marvin/talkback/TalkBackService$3;->this$0:Lcom/google/android/marvin/talkback/TalkBackService;

    invoke-virtual {v1}, Lcom/google/android/marvin/talkback/TalkBackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/marvin/talkback/TalkBackService$3;->this$0:Lcom/google/android/marvin/talkback/TalkBackService;

    #getter for: Lcom/google/android/marvin/talkback/TalkBackService;->mTouchExploreObserver:Landroid/database/ContentObserver;
    invoke-static {v2}, Lcom/google/android/marvin/talkback/TalkBackService;->access$3(Lcom/google/android/marvin/talkback/TalkBackService;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 885
    iget-object v1, p0, Lcom/google/android/marvin/talkback/TalkBackService$3;->this$0:Lcom/google/android/marvin/talkback/TalkBackService;

    #calls: Lcom/google/android/marvin/talkback/TalkBackService;->onTouchExplorationEnabled()V
    invoke-static {v1}, Lcom/google/android/marvin/talkback/TalkBackService;->access$4(Lcom/google/android/marvin/talkback/TalkBackService;)V

    goto :goto_1
.end method
