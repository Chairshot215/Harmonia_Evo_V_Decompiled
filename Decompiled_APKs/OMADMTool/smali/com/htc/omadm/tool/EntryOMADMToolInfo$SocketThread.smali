.class public Lcom/htc/omadm/tool/EntryOMADMToolInfo$SocketThread;
.super Ljava/lang/Thread;
.source "EntryOMADMToolInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/tool/EntryOMADMToolInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SocketThread"
.end annotation


# instance fields
.field bDMCommand:Z

.field iDMCommand:I

.field sDMCommand:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 464
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 465
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo$SocketThread;->sDMCommand:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public SetCommand(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 476
    iput p1, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo$SocketThread;->iDMCommand:I

    .line 477
    return-void
.end method

.method public SetCommand(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 470
    iput-object p1, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo$SocketThread;->sDMCommand:Ljava/lang/String;

    .line 471
    return-void
.end method

.method public SetCommand(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 473
    iput-boolean p1, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo$SocketThread;->bDMCommand:Z

    .line 474
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 480
    return-void
.end method
