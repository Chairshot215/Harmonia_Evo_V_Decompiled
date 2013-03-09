.class final Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType$1;
.super Ljava/lang/Object;
.source "SyncProtocol.java"

# interfaces
.implements Lcom/htc/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/protobuf/Internal$EnumLiteMap",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;
    .locals 1

    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/htc/protobuf/Internal$EnumLite;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType$1;->findValueByNumber(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    move-result-object v0

    return-object v0
.end method
