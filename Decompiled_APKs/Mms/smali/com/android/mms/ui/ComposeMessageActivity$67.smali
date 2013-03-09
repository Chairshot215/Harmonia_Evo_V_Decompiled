.class Lcom/android/mms/ui/ComposeMessageActivity$67;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/android/mms/ui/StateWatcher$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->initStateWatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 12137
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$67;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Z)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12140
    const-string v1, "ComposeMessageActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string v0, "SMS"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2

    const-string v0, "MMS"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12144
    if-eqz p1, :cond_3

    .line 12145
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$67;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->convertToMultimediaMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12800(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 12150
    const-string v0, "ComposeMessageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ATS]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$67;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][attach_data][successful]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12159
    :goto_2
    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$67;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-boolean v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->m_bAfterSent:Z

    if-ne v0, v4, :cond_4

    .line 12160
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$67;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-boolean v3, v0, Lcom/android/mms/ui/ComposeMessageActivity;->m_bAfterSent:Z

    .line 12169
    :goto_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$67;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12170
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$67;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$67;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientList;->size()I

    move-result v1

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->checkReachRecipientMaxNumber(IZ)Z
    invoke-static {v0, v1, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13100(Lcom/android/mms/ui/ComposeMessageActivity;IZ)Z

    .line 12172
    :cond_0
    return-void

    .line 12140
    :cond_1
    const-string v0, "MMS"

    goto :goto_0

    :cond_2
    const-string v0, "SMS"

    goto :goto_1

    .line 12154
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$67;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->convertToTextMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12900(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_2

    .line 12163
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$67;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->toastConvertInfo(Z)V
    invoke-static {v0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13000(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 12164
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$67;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-boolean v3, v0, Lcom/android/mms/ui/ComposeMessageActivity;->m_bAfterSent:Z

    goto :goto_3
.end method
