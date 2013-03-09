.class Lcom/htc/cscore/restapi/proxy/RestServicesProxy$StreamablePbReliableMessages;
.super Ljava/lang/Object;
.source "RestServicesProxy.java"

# interfaces
.implements Lcom/htc/cscore/restapi/request/JSONCloudRequest$WriteStreamable;
.implements Lcom/htc/cscore/restapi/request/JSONCloudRequest$ReadStreamable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamablePbReliableMessages"
.end annotation


# instance fields
.field public _m:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

.field final synthetic this$0:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;


# direct methods
.method public constructor <init>(Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 960
    iput-object p1, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$StreamablePbReliableMessages;->this$0:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 961
    return-void
.end method

.method public constructor <init>(Lcom/htc/cscore/restapi/proxy/RestServicesProxy;Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;)V
    .locals 0
    .parameter
    .parameter "m"

    .prologue
    .line 964
    iput-object p1, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$StreamablePbReliableMessages;->this$0:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 965
    iput-object p2, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$StreamablePbReliableMessages;->_m:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    .line 966
    return-void
.end method


# virtual methods
.method public readFrom(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 977
    invoke-static {p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$StreamablePbReliableMessages;->_m:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    .line 978
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 971
    iget-object v0, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$StreamablePbReliableMessages;->_m:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;->writeTo(Ljava/io/OutputStream;)V

    .line 972
    return-void
.end method
