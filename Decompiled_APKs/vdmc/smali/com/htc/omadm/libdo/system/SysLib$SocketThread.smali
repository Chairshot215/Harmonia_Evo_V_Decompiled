.class public Lcom/htc/omadm/libdo/system/SysLib$SocketThread;
.super Ljava/lang/Thread;
.source "SysLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/libdo/system/SysLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SocketThread"
.end annotation


# instance fields
.field bDMCommand:Z

.field iDMCommand:I

.field sDMCommand:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/omadm/libdo/system/SysLib;


# direct methods
.method public constructor <init>(Lcom/htc/omadm/libdo/system/SysLib;)V
    .locals 1
    .parameter

    .prologue
    .line 939
    iput-object p1, p0, Lcom/htc/omadm/libdo/system/SysLib$SocketThread;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 940
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/omadm/libdo/system/SysLib$SocketThread;->sDMCommand:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public SetCommand(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 951
    iput p1, p0, Lcom/htc/omadm/libdo/system/SysLib$SocketThread;->iDMCommand:I

    .line 952
    return-void
.end method

.method public SetCommand(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 945
    iput-object p1, p0, Lcom/htc/omadm/libdo/system/SysLib$SocketThread;->sDMCommand:Ljava/lang/String;

    .line 946
    return-void
.end method

.method public SetCommand(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 948
    iput-boolean p1, p0, Lcom/htc/omadm/libdo/system/SysLib$SocketThread;->bDMCommand:Z

    .line 949
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 955
    return-void
.end method
