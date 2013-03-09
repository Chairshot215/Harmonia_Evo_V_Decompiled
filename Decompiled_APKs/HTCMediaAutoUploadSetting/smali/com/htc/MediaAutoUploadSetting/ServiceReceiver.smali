.class public Lcom/htc/MediaAutoUploadSetting/ServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ServiceReceiver.java"


# static fields
.field private static final REQUEST_RESULT_FAILED:I = 0x321

.field private static final REQUEST_RESULT_SUCCESSFUL:I = 0x320

.field private static final TAG:Ljava/lang/String; = "ServiceReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 30
    const-string v10, "service_name"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 36
    .local v9, serviceName:Ljava/lang/String;
    const-string v10, "request_result"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 37
    .local v8, ret:I
    const-string v10, "ServiceReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ret: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->getInstance()Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    move-result-object v1

    .line 40
    .local v1, autoUploadInst:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;
    if-nez v1, :cond_0

    .line 42
    const-string v10, "ServiceReceiver"

    const-string v11, "MediaAutoUploadSetting not initialized!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_0
    return-void

    .line 46
    :cond_0
    const-string v10, "sso"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 47
    .local v4, msso:Z
    const-string v10, "sso_login"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 48
    .local v6, mssologin:Z
    const-string v10, "sso_action"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, mssoaction:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 57
    .local v2, h:Landroid/os/Handler;
    const/16 v10, 0x320

    if-ne v8, v10, :cond_3

    .line 60
    const-string v10, "get_album_list"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 61
    .local v0, aList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/social/data/Album;>;"
    if-nez v0, :cond_1

    .line 63
    const-string v10, "ServiceReceiver"

    const-string v11, "aList null from upload service"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #aList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/social/data/Album;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .restart local v0       #aList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/social/data/Album;>;"
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 77
    .local v3, m:Landroid/os/Message;
    const/16 v10, 0x100

    iput v10, v3, Landroid/os/Message;->what:I

    .line 78
    new-instance v7, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;

    invoke-direct {v7}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;-><init>()V

    .line 79
    .local v7, param:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;
    const-string v10, "service_account_type"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->accountType:Ljava/lang/String;

    .line 80
    iput-object v9, v7, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->serviceName:Ljava/lang/String;

    .line 81
    const-string v10, "service_title"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->serviceTitle:Ljava/lang/String;

    .line 82
    const-string v10, "upload_service_component"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    iput-object v10, v7, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->uploadServiceComponent:Landroid/content/ComponentName;

    .line 83
    const-string v10, "default_album"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense/social/data/Album;

    iput-object v10, v7, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->defaultAlbum:Lcom/htc/opensense/social/data/Album;

    .line 84
    const-string v10, "default_privacy"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, v7, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->readablePrivacyList:Ljava/util/ArrayList;

    .line 85
    const-string v10, "sso"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v7, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->sso:Z

    .line 86
    const-string v10, "sso_login"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v7, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->ssoLogin:Z

    .line 87
    const-string v10, "sso_action"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->ssoAction:Ljava/lang/String;

    .line 105
    iget-object v10, v7, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->readablePrivacyList:Ljava/util/ArrayList;

    if-nez v10, :cond_2

    .line 107
    const-string v10, "ServiceReceiver"

    const-string v11, "readablePrivacyList is null"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_2
    iput-object v0, v7, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->albumList:Ljava/util/ArrayList;

    .line 111
    iput-object v7, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 112
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 114
    .end local v0           #aList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/social/data/Album;>;"
    .end local v3           #m:Landroid/os/Message;
    .end local v7           #param:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;
    :cond_3
    const/16 v10, 0x321

    if-ne v8, v10, :cond_4

    .line 116
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 117
    .restart local v3       #m:Landroid/os/Message;
    const/16 v10, 0x101

    iput v10, v3, Landroid/os/Message;->what:I

    .line 118
    new-instance v7, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;

    invoke-direct {v7}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;-><init>()V

    .line 119
    .restart local v7       #param:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;
    const-string v10, "service_account_type"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->accountType:Ljava/lang/String;

    .line 120
    const-string v10, "default_privacy"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, v7, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->readablePrivacyList:Ljava/util/ArrayList;

    .line 121
    const-string v10, "sso"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v7, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->sso:Z

    .line 122
    const-string v10, "sso_login"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v7, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->ssoLogin:Z

    .line 123
    const-string v10, "sso_action"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->ssoAction:Ljava/lang/String;

    .line 128
    iput-object v7, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 129
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 133
    .end local v3           #m:Landroid/os/Message;
    .end local v7           #param:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;
    :cond_4
    const-string v10, "ServiceReceiver"

    const-string v11, "unknown REQUEST_RESULT"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
