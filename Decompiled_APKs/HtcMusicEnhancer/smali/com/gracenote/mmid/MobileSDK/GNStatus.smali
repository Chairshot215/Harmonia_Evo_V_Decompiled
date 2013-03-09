.class public Lcom/gracenote/mmid/MobileSDK/GNStatus;
.super Ljava/lang/Object;
.source "GNStatus.java"


# instance fields
.field private message:Ljava/lang/String;

.field private percentDone:I

.field private status:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;


# direct methods
.method constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;Ljava/lang/String;I)V
    .locals 0
    .parameter "inStatus"
    .parameter "inMessage"
    .parameter "inPercentDone"

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNStatus;->status:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    .line 17
    iput-object p2, p0, Lcom/gracenote/mmid/MobileSDK/GNStatus;->message:Ljava/lang/String;

    .line 18
    iput p3, p0, Lcom/gracenote/mmid/MobileSDK/GNStatus;->percentDone:I

    .line 19
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNStatus;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentDone()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/gracenote/mmid/MobileSDK/GNStatus;->percentDone:I

    return v0
.end method

.method public getStatus()Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNStatus;->status:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    return-object v0
.end method
