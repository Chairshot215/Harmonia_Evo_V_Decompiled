.class public Lcom/android/phone/prefernetwork/PreferredNetworkList$OpData;
.super Ljava/lang/Object;
.source "PreferredNetworkList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/prefernetwork/PreferredNetworkList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OpData"
.end annotation


# instance fields
.field private mMnc:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;


# direct methods
.method public constructor <init>(Lcom/android/phone/prefernetwork/PreferredNetworkList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "mnc"
    .parameter "name"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$OpData;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$OpData;->mMnc:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$OpData;->mName:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public getMnc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$OpData;->mMnc:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$OpData;->mName:Ljava/lang/String;

    return-object v0
.end method
