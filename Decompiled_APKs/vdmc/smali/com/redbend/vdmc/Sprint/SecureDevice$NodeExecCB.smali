.class public Lcom/redbend/vdmc/Sprint/SecureDevice$NodeExecCB;
.super Ljava/lang/Object;
.source "SecureDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdmc/Sprint/SecureDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NodeExecCB"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbend/vdmc/Sprint/SecureDevice;


# direct methods
.method public constructor <init>(Lcom/redbend/vdmc/Sprint/SecureDevice;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/redbend/vdmc/Sprint/SecureDevice$NodeExecCB;->this$0:Lcom/redbend/vdmc/Sprint/SecureDevice;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method public execute([BLjava/lang/String;Ljava/lang/String;)I
    .locals 12
    .parameter "data"
    .parameter "correlator"
    .parameter "node"

    .prologue
    .line 46
    const-string v7, "shutdown"

    .line 47
    .local v7, szShutdown:Ljava/lang/String;
    const-string v6, "lock"

    .line 48
    .local v6, szLock:Ljava/lang/String;
    const-string v5, "erase"

    .line 49
    .local v5, szErase:Ljava/lang/String;
    const-string v3, "code"

    .line 50
    .local v3, szCode:Ljava/lang/String;
    const-string v8, "true"

    .line 51
    .local v8, szTrue:Ljava/lang/String;
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    .line 52
    .local v4, szData:Ljava/lang/String;
    const-string v9, "&"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, szCmd:[Ljava/lang/String;
    iget-object v9, p0, Lcom/redbend/vdmc/Sprint/SecureDevice$NodeExecCB;->this$0:Lcom/redbend/vdmc/Sprint/SecureDevice;

    invoke-static {}, Lcom/redbend/vdmc/Sprint/SecureDevice;->access$100()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/ipl/secureDevice;->getInstance(Landroid/content/Context;)Lcom/htc/ipl/secureDevice;

    move-result-object v10

    #setter for: Lcom/redbend/vdmc/Sprint/SecureDevice;->msecureDeviceIPL:Lcom/htc/ipl/secureDevice;
    invoke-static {v9, v10}, Lcom/redbend/vdmc/Sprint/SecureDevice;->access$002(Lcom/redbend/vdmc/Sprint/SecureDevice;Lcom/htc/ipl/secureDevice;)Lcom/htc/ipl/secureDevice;

    .line 55
    iget-object v9, p0, Lcom/redbend/vdmc/Sprint/SecureDevice$NodeExecCB;->this$0:Lcom/redbend/vdmc/Sprint/SecureDevice;

    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v10

    #setter for: Lcom/redbend/vdmc/Sprint/SecureDevice;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v9, v10}, Lcom/redbend/vdmc/Sprint/SecureDevice;->access$202(Lcom/redbend/vdmc/Sprint/SecureDevice;Lcom/htc/ipl/common;)Lcom/htc/ipl/common;

    .line 56
    iget-object v9, p0, Lcom/redbend/vdmc/Sprint/SecureDevice$NodeExecCB;->this$0:Lcom/redbend/vdmc/Sprint/SecureDevice;

    #getter for: Lcom/redbend/vdmc/Sprint/SecureDevice;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v9}, Lcom/redbend/vdmc/Sprint/SecureDevice;->access$200(Lcom/redbend/vdmc/Sprint/SecureDevice;)Lcom/htc/ipl/common;

    move-result-object v9

    const/4 v10, 0x7

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/htc/ipl/common;->AccessToggle(IZ)V

    .line 57
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v9, v2

    if-ge v1, v9, :cond_7

    .line 58
    const-string v9, "SecureDevice"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "szCmd: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v2, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    aget-object v9, v2, v1

    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 60
    aget-object v9, v2, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, cmd:Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 62
    iget-object v9, p0, Lcom/redbend/vdmc/Sprint/SecureDevice$NodeExecCB;->this$0:Lcom/redbend/vdmc/Sprint/SecureDevice;

    #getter for: Lcom/redbend/vdmc/Sprint/SecureDevice;->msecureDeviceIPL:Lcom/htc/ipl/secureDevice;
    invoke-static {v9}, Lcom/redbend/vdmc/Sprint/SecureDevice;->access$000(Lcom/redbend/vdmc/Sprint/SecureDevice;)Lcom/htc/ipl/secureDevice;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/ipl/secureDevice;->reboot(Z)V

    .line 67
    .end local v0           #cmd:Ljava/lang/String;
    :cond_0
    :goto_1
    aget-object v9, v2, v1

    invoke-virtual {v9, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 68
    aget-object v9, v2, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    .restart local v0       #cmd:Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 70
    iget-object v9, p0, Lcom/redbend/vdmc/Sprint/SecureDevice$NodeExecCB;->this$0:Lcom/redbend/vdmc/Sprint/SecureDevice;

    #getter for: Lcom/redbend/vdmc/Sprint/SecureDevice;->msecureDeviceIPL:Lcom/htc/ipl/secureDevice;
    invoke-static {v9}, Lcom/redbend/vdmc/Sprint/SecureDevice;->access$000(Lcom/redbend/vdmc/Sprint/SecureDevice;)Lcom/htc/ipl/secureDevice;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/ipl/secureDevice;->lock(Z)V

    .line 75
    .end local v0           #cmd:Ljava/lang/String;
    :cond_1
    :goto_2
    aget-object v9, v2, v1

    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 76
    aget-object v9, v2, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    .restart local v0       #cmd:Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 78
    iget-object v9, p0, Lcom/redbend/vdmc/Sprint/SecureDevice$NodeExecCB;->this$0:Lcom/redbend/vdmc/Sprint/SecureDevice;

    #getter for: Lcom/redbend/vdmc/Sprint/SecureDevice;->msecureDeviceIPL:Lcom/htc/ipl/secureDevice;
    invoke-static {v9}, Lcom/redbend/vdmc/Sprint/SecureDevice;->access$000(Lcom/redbend/vdmc/Sprint/SecureDevice;)Lcom/htc/ipl/secureDevice;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/ipl/secureDevice;->erase(Z)V

    .line 83
    .end local v0           #cmd:Ljava/lang/String;
    :cond_2
    :goto_3
    aget-object v9, v2, v1

    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 84
    aget-object v9, v2, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    .restart local v0       #cmd:Ljava/lang/String;
    iget-object v9, p0, Lcom/redbend/vdmc/Sprint/SecureDevice$NodeExecCB;->this$0:Lcom/redbend/vdmc/Sprint/SecureDevice;

    #getter for: Lcom/redbend/vdmc/Sprint/SecureDevice;->msecureDeviceIPL:Lcom/htc/ipl/secureDevice;
    invoke-static {v9}, Lcom/redbend/vdmc/Sprint/SecureDevice;->access$000(Lcom/redbend/vdmc/Sprint/SecureDevice;)Lcom/htc/ipl/secureDevice;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/htc/ipl/secureDevice;->code(Ljava/lang/String;)V

    .line 57
    .end local v0           #cmd:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 64
    .restart local v0       #cmd:Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/redbend/vdmc/Sprint/SecureDevice$NodeExecCB;->this$0:Lcom/redbend/vdmc/Sprint/SecureDevice;

    #getter for: Lcom/redbend/vdmc/Sprint/SecureDevice;->msecureDeviceIPL:Lcom/htc/ipl/secureDevice;
    invoke-static {v9}, Lcom/redbend/vdmc/Sprint/SecureDevice;->access$000(Lcom/redbend/vdmc/Sprint/SecureDevice;)Lcom/htc/ipl/secureDevice;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/ipl/secureDevice;->reboot(Z)V

    goto :goto_1

    .line 72
    :cond_5
    iget-object v9, p0, Lcom/redbend/vdmc/Sprint/SecureDevice$NodeExecCB;->this$0:Lcom/redbend/vdmc/Sprint/SecureDevice;

    #getter for: Lcom/redbend/vdmc/Sprint/SecureDevice;->msecureDeviceIPL:Lcom/htc/ipl/secureDevice;
    invoke-static {v9}, Lcom/redbend/vdmc/Sprint/SecureDevice;->access$000(Lcom/redbend/vdmc/Sprint/SecureDevice;)Lcom/htc/ipl/secureDevice;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/ipl/secureDevice;->lock(Z)V

    goto :goto_2

    .line 80
    :cond_6
    iget-object v9, p0, Lcom/redbend/vdmc/Sprint/SecureDevice$NodeExecCB;->this$0:Lcom/redbend/vdmc/Sprint/SecureDevice;

    #getter for: Lcom/redbend/vdmc/Sprint/SecureDevice;->msecureDeviceIPL:Lcom/htc/ipl/secureDevice;
    invoke-static {v9}, Lcom/redbend/vdmc/Sprint/SecureDevice;->access$000(Lcom/redbend/vdmc/Sprint/SecureDevice;)Lcom/htc/ipl/secureDevice;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/ipl/secureDevice;->erase(Z)V

    goto :goto_3

    .line 88
    .end local v0           #cmd:Ljava/lang/String;
    :cond_7
    const-string v9, "SecureDevice"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "node:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " szData:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v9, 0x0

    return v9
.end method
