.class Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection$1;
.super Ljava/lang/Object;
.source "GTalkConnection.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 8
    .parameter "observable"
    .parameter "data"

    .prologue
    .line 77
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mShowMobileIndicator:Z
    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->access$000(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;)Z

    move-result v1

    .line 78
    .local v1, oldShowMobileIndicator:Z
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mCapabilities:I
    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->access$100(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;)I

    move-result v0

    .line 79
    .local v0, oldCapabilities:I
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->access$200(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    iget-object v6, v6, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getShowMobileIndicator(Landroid/content/Context;)Z

    move-result v5

    #setter for: Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mShowMobileIndicator:Z
    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->access$002(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;Z)Z

    .line 80
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->access$300(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getCapabilities()I

    move-result v5

    #setter for: Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mCapabilities:I
    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->access$102(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;I)I

    .line 81
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mShowMobileIndicator:Z
    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->access$000(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;)Z

    move-result v4

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mCapabilities:I
    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->access$100(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;)I

    move-result v4

    if-eq v0, v4, :cond_1

    .line 83
    :cond_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    const-string v5, "GTalkService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "show mobile indicator or caps setting changed: mCapabilities="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mCapabilities:I
    invoke-static {v7}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->access$100(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mShowMobileIndicator="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mShowMobileIndicator:Z
    invoke-static {v7}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->access$000(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->logv(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->access$400(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getImSessionImpl()Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    move-result-object v3

    .line 86
    .local v3, session:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;
    if-eqz v3, :cond_1

    .line 87
    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->getPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v2

    .line 89
    .local v2, presence:Lcom/google/android/gtalkservice/Presence;
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->mCapabilities:I
    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->access$100(Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/gtalkservice/Presence;->setCapabilities(I)V

    .line 90
    invoke-virtual {v3, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->setPresence(Lcom/google/android/gtalkservice/Presence;)Z

    .line 91
    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->sendPresenceCapability()V

    .line 94
    .end local v2           #presence:Lcom/google/android/gtalkservice/Presence;
    .end local v3           #session:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;
    :cond_1
    return-void
.end method
