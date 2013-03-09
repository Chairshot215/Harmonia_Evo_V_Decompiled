.class Lcom/sqn/dcc/DeviceController$dcSocketReconnect;
.super Lcom/sqn/dcc/DeviceController$dcThread;
.source "DeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sqn/dcc/DeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "dcSocketReconnect"
.end annotation


# instance fields
.field _dc:Lcom/sqn/dcc/DeviceController;

.field final synthetic this$0:Lcom/sqn/dcc/DeviceController;


# direct methods
.method public constructor <init>(Lcom/sqn/dcc/DeviceController;Lcom/sqn/dcc/DeviceController;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sqn/dcc/DeviceController$dcSocketReconnect;->this$0:Lcom/sqn/dcc/DeviceController;

    invoke-direct {p0, p1, v0}, Lcom/sqn/dcc/DeviceController$dcThread;-><init>(Lcom/sqn/dcc/DeviceController;Lcom/sqn/dcc/DeviceController$1;)V

    iput-object v0, p0, Lcom/sqn/dcc/DeviceController$dcSocketReconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iput-object p2, p0, Lcom/sqn/dcc/DeviceController$dcSocketReconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketReconnect;->this$0:Lcom/sqn/dcc/DeviceController;

    iget-object v2, p0, Lcom/sqn/dcc/DeviceController$dcSocketReconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    invoke-direct {v0, v1, v2}, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;-><init>(Lcom/sqn/dcc/DeviceController;Lcom/sqn/dcc/DeviceController;)V

    invoke-virtual {v0}, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->start()V

    :try_start_0
    invoke-virtual {v0}, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketReconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    new-instance v2, Lcom/sqn/dcc/DeviceController$dcSocketConnect;

    iget-object v3, p0, Lcom/sqn/dcc/DeviceController$dcSocketReconnect;->this$0:Lcom/sqn/dcc/DeviceController;

    iget-object v4, p0, Lcom/sqn/dcc/DeviceController$dcSocketReconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    invoke-direct {v2, v3, v4}, Lcom/sqn/dcc/DeviceController$dcSocketConnect;-><init>(Lcom/sqn/dcc/DeviceController;Lcom/sqn/dcc/DeviceController;)V

    iput-object v2, v1, Lcom/sqn/dcc/DeviceController;->_dcSocketConnectThread:Lcom/sqn/dcc/DeviceController$dcSocketConnect;

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController$dcSocketReconnect;->_dc:Lcom/sqn/dcc/DeviceController;

    iget-object v1, v1, Lcom/sqn/dcc/DeviceController;->_dcSocketConnectThread:Lcom/sqn/dcc/DeviceController$dcSocketConnect;

    invoke-virtual {v1}, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->start()V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
