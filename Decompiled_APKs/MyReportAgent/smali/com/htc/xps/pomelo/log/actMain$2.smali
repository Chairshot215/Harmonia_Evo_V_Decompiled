.class Lcom/htc/xps/pomelo/log/actMain$2;
.super Ljava/lang/Object;
.source "actMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/xps/pomelo/log/actMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/xps/pomelo/log/actMain;


# direct methods
.method constructor <init>(Lcom/htc/xps/pomelo/log/actMain;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/actMain$2;->this$0:Lcom/htc/xps/pomelo/log/actMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 82
    iget-object v1, p0, Lcom/htc/xps/pomelo/log/actMain$2;->this$0:Lcom/htc/xps/pomelo/log/actMain;

    iget-object v1, v1, Lcom/htc/xps/pomelo/log/actMain;->sb:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/xps/pomelo/log/actMain$2;->this$0:Lcom/htc/xps/pomelo/log/actMain;

    invoke-virtual {v3}, Lcom/htc/xps/pomelo/log/actMain;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Policy start..\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v1, p0, Lcom/htc/xps/pomelo/log/actMain$2;->this$0:Lcom/htc/xps/pomelo/log/actMain;

    iget-object v1, v1, Lcom/htc/xps/pomelo/log/actMain;->lib:Lcom/htc/xps/pomelo/log/LogLib;

    iget-object v2, p0, Lcom/htc/xps/pomelo/log/actMain$2;->this$0:Lcom/htc/xps/pomelo/log/actMain;

    invoke-virtual {v2}, Lcom/htc/xps/pomelo/log/actMain;->makeSamplePolicyRequest()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/xps/pomelo/log/LogLib;->getLogPolicy(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT;)Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;

    move-result-object v0

    .line 85
    .local v0, response:Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;
    iget-object v1, p0, Lcom/htc/xps/pomelo/log/actMain$2;->this$0:Lcom/htc/xps/pomelo/log/actMain;

    iget-object v1, v1, Lcom/htc/xps/pomelo/log/actMain;->sb:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/xps/pomelo/log/actMain$2;->this$0:Lcom/htc/xps/pomelo/log/actMain;

    invoke-virtual {v3}, Lcom/htc/xps/pomelo/log/actMain;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Policy return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;->statusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Lcom/htc/xps/pomelo/log/actMain$2;->this$0:Lcom/htc/xps/pomelo/log/actMain;

    iget-object v1, v1, Lcom/htc/xps/pomelo/log/actMain;->sb:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/xps/pomelo/log/actMain$2;->this$0:Lcom/htc/xps/pomelo/log/actMain;

    invoke-virtual {v3}, Lcom/htc/xps/pomelo/log/actMain;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;->policyResponse:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget v1, v0, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;->statusCode:I

    sget-object v2, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->SUCCESS:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    invoke-virtual {v2}, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 88
    iget-object v1, p0, Lcom/htc/xps/pomelo/log/actMain$2;->this$0:Lcom/htc/xps/pomelo/log/actMain;

    iget-object v1, v1, Lcom/htc/xps/pomelo/log/actMain;->sb:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/xps/pomelo/log/actMain$2;->this$0:Lcom/htc/xps/pomelo/log/actMain;

    invoke-virtual {v3}, Lcom/htc/xps/pomelo/log/actMain;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Policy count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;->policyResponse:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    invoke-virtual {v3}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->getPolicyCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/htc/xps/pomelo/log/actMain$2;->this$0:Lcom/htc/xps/pomelo/log/actMain;

    iget-object v1, v1, Lcom/htc/xps/pomelo/log/actMain;->etDisplay:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/htc/xps/pomelo/log/actMain$2;->this$0:Lcom/htc/xps/pomelo/log/actMain;

    iget-object v2, v2, Lcom/htc/xps/pomelo/log/actMain;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method
