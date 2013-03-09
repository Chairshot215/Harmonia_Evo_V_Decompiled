.class Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;
.super Lcom/htc/store/activity/detail/DetailInfo$InfoItem;
.source "DetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InfoItemAudio"
.end annotation


# instance fields
.field private audioUri:Landroid/net/Uri;

.field private downloadObserver:Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;

.field private itemId:Ljava/lang/String;

.field private subInfo:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/store/activity/detail/DetailInfo;

.field private trialContentUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/detail/DetailInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 1476
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/store/activity/detail/DetailInfo$InfoItem;-><init>(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/activity/detail/DetailInfo$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/activity/detail/DetailInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1476
    invoke-direct {p0, p1}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;-><init>(Lcom/htc/store/activity/detail/DetailInfo;)V

    return-void
.end method


# virtual methods
.method public getAudioUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->audioUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDownloadObserver()Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;
    .locals 1

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->downloadObserver:Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->subInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getTrialContentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->trialContentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 1484
    const/4 v0, 0x1

    return v0
.end method

.method public isCompleted()Z
    .locals 1

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->audioUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAudioUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 1505
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->audioUri:Landroid/net/Uri;

    .line 1506
    return-void
.end method

.method public setDownloadObserver(Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 1511
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->downloadObserver:Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;

    .line 1512
    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1493
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->itemId:Ljava/lang/String;

    .line 1494
    return-void
.end method

.method public setSubInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "subInfo"

    .prologue
    .line 1487
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->subInfo:Ljava/lang/String;

    .line 1488
    return-void
.end method

.method public setTrialContentUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 1499
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->trialContentUrl:Ljava/lang/String;

    .line 1500
    return-void
.end method
