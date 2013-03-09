.class public Lcom/htc/omadm/tool/GetInfoActivity;
.super Landroid/app/Activity;
.source "GetInfoActivity.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "GetInfoActivity"


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field mFutureLib:Lcom/htc/omadm/aidl/IDmFutureDial;

.field mFutureLibBind:Z

.field private mServerAddrTextView:Landroid/widget/TextView;

.field private mServerPortTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/htc/omadm/tool/GetInfoActivity;->mServerAddrTextView:Landroid/widget/TextView;

    .line 21
    iput-object v0, p0, Lcom/htc/omadm/tool/GetInfoActivity;->mServerPortTextView:Landroid/widget/TextView;

    .line 31
    iput-object v0, p0, Lcom/htc/omadm/tool/GetInfoActivity;->mFutureLib:Lcom/htc/omadm/aidl/IDmFutureDial;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/omadm/tool/GetInfoActivity;->mFutureLibBind:Z

    .line 77
    new-instance v0, Lcom/htc/omadm/tool/GetInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/omadm/tool/GetInfoActivity$1;-><init>(Lcom/htc/omadm/tool/GetInfoActivity;)V

    iput-object v0, p0, Lcom/htc/omadm/tool/GetInfoActivity;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private bind_isOK()Z
    .locals 3

    .prologue
    .line 93
    :goto_0
    iget-boolean v1, p0, Lcom/htc/omadm/tool/GetInfoActivity;->mFutureLibBind:Z

    if-nez v1, :cond_0

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/omadm/aidl/IDmFutureDial;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/omadm/tool/GetInfoActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/omadm/tool/GetInfoActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/omadm/tool/GetInfoActivity;->mFutureLibBind:Z

    goto :goto_0

    .line 97
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-boolean v1, p0, Lcom/htc/omadm/tool/GetInfoActivity;->mFutureLibBind:Z

    return v1
.end method


# virtual methods
.method public GetInfo()V
    .locals 4

    .prologue
    .line 47
    :try_start_0
    const-string v1, "GetInfoActivity"

    const-string v2, "Get Information..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const v1, 0x7f040004

    invoke-virtual {p0, v1}, Lcom/htc/omadm/tool/GetInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/omadm/tool/GetInfoActivity;->mServerAddrTextView:Landroid/widget/TextView;

    .line 49
    const v1, 0x7f040005

    invoke-virtual {p0, v1}, Lcom/htc/omadm/tool/GetInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/omadm/tool/GetInfoActivity;->mServerPortTextView:Landroid/widget/TextView;

    .line 59
    iget-object v1, p0, Lcom/htc/omadm/tool/GetInfoActivity;->mServerAddrTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/omadm/tool/GetInfoActivity;->mFutureLib:Lcom/htc/omadm/aidl/IDmFutureDial;

    invoke-interface {v2}, Lcom/htc/omadm/aidl/IDmFutureDial;->Get_ServerAdrAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v1, p0, Lcom/htc/omadm/tool/GetInfoActivity;->mServerPortTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/omadm/tool/GetInfoActivity;->mFutureLib:Lcom/htc/omadm/aidl/IDmFutureDial;

    invoke-interface {v2}, Lcom/htc/omadm/aidl/IDmFutureDial;->Get_ServerAdrPort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    const-string v1, "GetInfoActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EXCEPTION:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-direct {p0}, Lcom/htc/omadm/tool/GetInfoActivity;->bind_isOK()Z

    .line 39
    iput-object p0, p0, Lcom/htc/omadm/tool/GetInfoActivity;->mContext:Landroid/content/Context;

    .line 40
    const v0, 0x7f020002

    invoke-virtual {p0, v0}, Lcom/htc/omadm/tool/GetInfoActivity;->setContentView(I)V

    .line 41
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/omadm/tool/GetInfoActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/tool/GetInfoActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 105
    return-void
.end method
