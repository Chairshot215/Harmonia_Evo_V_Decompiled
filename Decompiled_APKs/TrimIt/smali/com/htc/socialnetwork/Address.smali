.class public Lcom/htc/socialnetwork/Address;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/htc/socialnetwork/Address;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/htc/socialnetwork/Address;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/htc/socialnetwork/Address;->mAddress:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/htc/socialnetwork/Address;->mType:Ljava/lang/String;

    return-void
.end method
