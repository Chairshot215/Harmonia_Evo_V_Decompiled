.class public Lcom/googlecode/android/wifi/tether/data/ClientData;
.super Ljava/lang/Object;
.source "ClientData.java"


# instance fields
.field private accessAllowed:Z

.field private clientName:Ljava/lang/String;

.field private connectTime:Ljava/util/Date;

.field private connected:Z

.field private ipAddress:Ljava/lang/String;

.field private macAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/data/ClientData;->clientName:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/data/ClientData;->connectTime:Ljava/util/Date;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/data/ClientData;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/data/ClientData;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public isAccessAllowed()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/googlecode/android/wifi/tether/data/ClientData;->accessAllowed:Z

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/googlecode/android/wifi/tether/data/ClientData;->connected:Z

    return v0
.end method

.method public setAccessAllowed(Z)V
    .locals 0
    .parameter "accessAllowed"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/googlecode/android/wifi/tether/data/ClientData;->accessAllowed:Z

    .line 36
    return-void
.end method

.method public setClientName(Ljava/lang/String;)V
    .locals 0
    .parameter "clientName"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/data/ClientData;->clientName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setConnectTime(Ljava/util/Date;)V
    .locals 0
    .parameter "connectTime"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/data/ClientData;->connectTime:Ljava/util/Date;

    .line 60
    return-void
.end method

.method public setConnected(Z)V
    .locals 0
    .parameter "connected"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/googlecode/android/wifi/tether/data/ClientData;->connected:Z

    .line 30
    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "ipAddress"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/data/ClientData;->ipAddress:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "macAddress"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/data/ClientData;->macAddress:Ljava/lang/String;

    .line 42
    return-void
.end method
