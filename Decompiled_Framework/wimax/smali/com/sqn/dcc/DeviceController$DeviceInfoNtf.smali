.class public Lcom/sqn/dcc/DeviceController$DeviceInfoNtf;
.super Lcom/sqn/dcc/DeviceInfoClient;
.source "DeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sqn/dcc/DeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceInfoNtf"
.end annotation


# instance fields
.field _clientUses:Lcom/sqn/dcc/DeviceInfoClient;

.field final synthetic this$0:Lcom/sqn/dcc/DeviceController;


# direct methods
.method public constructor <init>(Lcom/sqn/dcc/DeviceController;Lcom/sqn/dcc/DeviceInfoClient;)V
    .locals 0

    iput-object p1, p0, Lcom/sqn/dcc/DeviceController$DeviceInfoNtf;->this$0:Lcom/sqn/dcc/DeviceController;

    invoke-direct {p0}, Lcom/sqn/dcc/DeviceInfoClient;-><init>()V

    iput-object p2, p0, Lcom/sqn/dcc/DeviceController$DeviceInfoNtf;->_clientUses:Lcom/sqn/dcc/DeviceInfoClient;

    return-void
.end method


# virtual methods
.method public AuthenticationNaiRejected()V
    .locals 1

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController$DeviceInfoNtf;->_clientUses:Lcom/sqn/dcc/DeviceInfoClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController$DeviceInfoNtf;->_clientUses:Lcom/sqn/dcc/DeviceInfoClient;

    invoke-virtual {v0}, Lcom/sqn/dcc/DeviceInfoClient;->AuthenticationNaiRejected()V

    :cond_0
    return-void
.end method

.method public AuthenticationState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController$DeviceInfoNtf;->_clientUses:Lcom/sqn/dcc/DeviceInfoClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController$DeviceInfoNtf;->_clientUses:Lcom/sqn/dcc/DeviceInfoClient;

    invoke-virtual {v0, p1}, Lcom/sqn/dcc/DeviceInfoClient;->AuthenticationState(Z)V

    :cond_0
    return-void
.end method

.method public MsDetached(J)V
    .locals 2

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController$DeviceInfoNtf;->this$0:Lcom/sqn/dcc/DeviceController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sqn/dcc/DeviceController;->_targetConnected:Z

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController$DeviceInfoNtf;->_clientUses:Lcom/sqn/dcc/DeviceInfoClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController$DeviceInfoNtf;->_clientUses:Lcom/sqn/dcc/DeviceInfoClient;

    invoke-virtual {v0, p1, p2}, Lcom/sqn/dcc/DeviceInfoClient;->MsDetached(J)V

    :cond_0
    return-void
.end method

.method public MsFatalError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController$DeviceInfoNtf;->_clientUses:Lcom/sqn/dcc/DeviceInfoClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController$DeviceInfoNtf;->_clientUses:Lcom/sqn/dcc/DeviceInfoClient;

    invoke-virtual {v0, p1}, Lcom/sqn/dcc/DeviceInfoClient;->MsFatalError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public MsLoading(J)V
    .locals 1

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController$DeviceInfoNtf;->_clientUses:Lcom/sqn/dcc/DeviceInfoClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController$DeviceInfoNtf;->_clientUses:Lcom/sqn/dcc/DeviceInfoClient;

    invoke-virtual {v0, p1, p2}, Lcom/sqn/dcc/DeviceInfoClient;->MsLoading(J)V

    :cond_0
    return-void
.end method

.method public MsReady()V
    .locals 1

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController$DeviceInfoNtf;->_clientUses:Lcom/sqn/dcc/DeviceInfoClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController$DeviceInfoNtf;->_clientUses:Lcom/sqn/dcc/DeviceInfoClient;

    invoke-virtual {v0}, Lcom/sqn/dcc/DeviceInfoClient;->MsReady()V

    :cond_0
    return-void
.end method
