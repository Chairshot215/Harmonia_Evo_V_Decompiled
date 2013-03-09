.class public Lcom/android/phone/CellBroadcastSettings$ChannelList;
.super Ljava/lang/Object;
.source "CellBroadcastSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CellBroadcastSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChannelList"
.end annotation


# instance fields
.field public mChannel:Ljava/lang/String;

.field public mEnable:I

.field public mId:J

.field public mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/CellBroadcastSettings;


# direct methods
.method public constructor <init>(Lcom/android/phone/CellBroadcastSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/android/phone/CellBroadcastSettings$ChannelList;->this$0:Lcom/android/phone/CellBroadcastSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings$ChannelList;->mChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getEnable()I
    .locals 1

    .prologue
    .line 614
    iget v0, p0, Lcom/android/phone/CellBroadcastSettings$ChannelList;->mEnable:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 590
    iget-wide v0, p0, Lcom/android/phone/CellBroadcastSettings$ChannelList;->mId:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings$ChannelList;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0
    .parameter "channel"

    .prologue
    .line 602
    iput-object p1, p0, Lcom/android/phone/CellBroadcastSettings$ChannelList;->mChannel:Ljava/lang/String;

    .line 603
    return-void
.end method

.method public setEnable(I)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 610
    iput p1, p0, Lcom/android/phone/CellBroadcastSettings$ChannelList;->mEnable:I

    .line 611
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "Id"

    .prologue
    .line 586
    iput-wide p1, p0, Lcom/android/phone/CellBroadcastSettings$ChannelList;->mId:J

    .line 587
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 594
    iput-object p1, p0, Lcom/android/phone/CellBroadcastSettings$ChannelList;->mTitle:Ljava/lang/String;

    .line 595
    return-void
.end method
