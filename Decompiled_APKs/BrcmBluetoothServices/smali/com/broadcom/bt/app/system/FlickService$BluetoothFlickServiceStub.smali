.class Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;
.super Lcom/broadcom/bt/service/flick/IBluetoothFlickService$Stub;
.source "FlickService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/system/FlickService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothFlickServiceStub"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSvc:Lcom/broadcom/bt/service/flick/BluetoothFlickService;

.field private mSvcStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/broadcom/bt/service/flick/IBluetoothFlickService$Stub;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->mSvcStarted:Z

    .line 97
    iput-object p1, p0, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->mContext:Landroid/content/Context;

    .line 98
    new-instance v0, Lcom/broadcom/bt/service/flick/BluetoothFlickService;

    invoke-direct {v0, p1}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->mSvc:Lcom/broadcom/bt/service/flick/BluetoothFlickService;

    .line 99
    return-void
.end method


# virtual methods
.method public connectSlideshow(Ljava/lang/String;)V
    .locals 1
    .parameter "bdaddr"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->mSvc:Lcom/broadcom/bt/service/flick/BluetoothFlickService;

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->mSvc:Lcom/broadcom/bt/service/flick/BluetoothFlickService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->connectSlideshow(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disableFlick()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->mSvc:Lcom/broadcom/bt/service/flick/BluetoothFlickService;

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->mSvc:Lcom/broadcom/bt/service/flick/BluetoothFlickService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->disableFlick()V

    goto :goto_0
.end method

.method public disableSlideshow()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->mSvc:Lcom/broadcom/bt/service/flick/BluetoothFlickService;

    if-nez v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->mSvc:Lcom/broadcom/bt/service/flick/BluetoothFlickService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->disableSlideshow()V

    goto :goto_0
.end method

.method public disconnectSlideshow()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->mSvc:Lcom/broadcom/bt/service/flick/BluetoothFlickService;

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->mSvc:Lcom/broadcom/bt/service/flick/BluetoothFlickService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->disconnectSlideshow()V

    goto :goto_0
.end method

.method public enableFlick()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->mSvc:Lcom/broadcom/bt/service/flick/BluetoothFlickService;

    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->mSvc:Lcom/broadcom/bt/service/flick/BluetoothFlickService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->enableFlick()V

    goto :goto_0
.end method

.method public enableSlideshow()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->mSvc:Lcom/broadcom/bt/service/flick/BluetoothFlickService;

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->mSvc:Lcom/broadcom/bt/service/flick/BluetoothFlickService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->enableSlideshow()V

    goto :goto_0
.end method

.method public sendFlick(Ljava/lang/String;)V
    .locals 1
    .parameter "fpath"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->mSvc:Lcom/broadcom/bt/service/flick/BluetoothFlickService;

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->mSvc:Lcom/broadcom/bt/service/flick/BluetoothFlickService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->sendFlick(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendSlideshow(Ljava/lang/String;)V
    .locals 1
    .parameter "fpath"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->mSvc:Lcom/broadcom/bt/service/flick/BluetoothFlickService;

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->mSvc:Lcom/broadcom/bt/service/flick/BluetoothFlickService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->sendSlideshow(Ljava/lang/String;)V

    goto :goto_0
.end method

.method start()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->mSvc:Lcom/broadcom/bt/service/flick/BluetoothFlickService;

    if-nez v0, :cond_0

    .line 76
    const-string v0, "FlickAppService"

    const-string v1, "Service not found"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    const-string v0, "FlickAppService"

    const-string v1, "Invoking mSvc.start()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->mSvc:Lcom/broadcom/bt/service/flick/BluetoothFlickService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->init()V

    .line 81
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->mSvc:Lcom/broadcom/bt/service/flick/BluetoothFlickService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->start()V

    goto :goto_0
.end method

.method public startInquirySlideshow()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->mSvc:Lcom/broadcom/bt/service/flick/BluetoothFlickService;

    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->mSvc:Lcom/broadcom/bt/service/flick/BluetoothFlickService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->startInquirySlideshow()V

    goto :goto_0
.end method

.method stop()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->mSvc:Lcom/broadcom/bt/service/flick/BluetoothFlickService;

    if-nez v0, :cond_0

    .line 86
    const-string v0, "FlickAppService"

    const-string v1, "Service not found"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->mSvc:Lcom/broadcom/bt/service/flick/BluetoothFlickService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->stop()V

    .line 90
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->mSvc:Lcom/broadcom/bt/service/flick/BluetoothFlickService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->finish()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->mSvc:Lcom/broadcom/bt/service/flick/BluetoothFlickService;

    .line 92
    const-string v0, "FlickAppService"

    const-string v1, "Invoking mSvc.stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
