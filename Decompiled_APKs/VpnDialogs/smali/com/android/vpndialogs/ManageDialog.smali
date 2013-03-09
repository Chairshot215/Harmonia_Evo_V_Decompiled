.class public Lcom/android/vpndialogs/ManageDialog;
.super Landroid/app/Activity;
.source "ManageDialog.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VpnManage"


# instance fields
.field private mConfig:Lcom/android/internal/net/VpnConfig;

.field private mDataReceived:Landroid/widget/TextView;

.field private mDataTransmitted:Landroid/widget/TextView;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDuration:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mService:Landroid/net/IConnectivityManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getStatistics()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 174
    const/4 v1, 0x0

    .line 177
    .local v1, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/proc/net/dev"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    .end local v1           #in:Ljava/io/DataInputStream;
    .local v2, in:Ljava/io/DataInputStream;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/vpndialogs/ManageDialog;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v7, v7, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, prefix:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, line:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 183
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, " +"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, numbers:[Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    const/16 v6, 0x11

    if-ge v0, v6, :cond_2

    .line 185
    aget-object v6, v4, v0

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result v6

    if-nez v6, :cond_1

    .line 196
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_1
    move-object v1, v2

    .line 201
    .end local v0           #i:I
    .end local v2           #in:Ljava/io/DataInputStream;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #numbers:[Ljava/lang/String;
    .end local v5           #prefix:Ljava/lang/String;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :goto_2
    return-object v4

    .line 184
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #i:I
    .restart local v2       #in:Ljava/io/DataInputStream;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #numbers:[Ljava/lang/String;
    .restart local v5       #prefix:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v1, v2

    .line 201
    .end local v0           #i:I
    .end local v2           #in:Ljava/io/DataInputStream;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #numbers:[Ljava/lang/String;
    .end local v5           #prefix:Ljava/lang/String;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :goto_3
    const/4 v4, 0x0

    goto :goto_2

    .line 197
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #i:I
    .restart local v2       #in:Ljava/io/DataInputStream;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #numbers:[Ljava/lang/String;
    .restart local v5       #prefix:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v1, v2

    .line 200
    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    goto :goto_3

    .line 192
    .end local v0           #i:I
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #numbers:[Ljava/lang/String;
    .end local v5           #prefix:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 196
    :goto_4
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 197
    :catch_2
    move-exception v6

    goto :goto_3

    .line 195
    :catchall_0
    move-exception v6

    .line 196
    :goto_5
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 199
    :goto_6
    throw v6

    .line 197
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #i:I
    .restart local v2       #in:Ljava/io/DataInputStream;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #numbers:[Ljava/lang/String;
    .restart local v5       #prefix:Ljava/lang/String;
    :catch_3
    move-exception v6

    goto :goto_1

    .end local v0           #i:I
    .end local v2           #in:Ljava/io/DataInputStream;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #numbers:[Ljava/lang/String;
    .end local v5           #prefix:Ljava/lang/String;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_4
    move-exception v7

    goto :goto_6

    .line 195
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v2       #in:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    goto :goto_5

    .line 192
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v2       #in:Ljava/io/DataInputStream;
    :catch_5
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    goto :goto_4
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 14
    .parameter "message"

    .prologue
    const v13, 0x7f03000b

    const-wide/16 v11, 0x3c

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 149
    iget-object v3, p0, Lcom/android/vpndialogs/ManageDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    iget-object v3, p0, Lcom/android/vpndialogs/ManageDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 152
    iget-object v3, p0, Lcom/android/vpndialogs/ManageDialog;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-wide v3, v3, Lcom/android/internal/net/VpnConfig;->startTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/vpndialogs/ManageDialog;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-wide v5, v5, Lcom/android/internal/net/VpnConfig;->startTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long v1, v3, v5

    .line 154
    .local v1, seconds:J
    iget-object v3, p0, Lcom/android/vpndialogs/ManageDialog;->mDuration:Landroid/widget/TextView;

    const-string v4, "%02d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-wide/16 v6, 0xe10

    div-long v6, v1, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    div-long v6, v1, v11

    rem-long/2addr v6, v11

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    rem-long v6, v1, v11

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .end local v1           #seconds:J
    :cond_0
    invoke-direct {p0}, Lcom/android/vpndialogs/ManageDialog;->getStatistics()[Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, numbers:[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 161
    iget-object v3, p0, Lcom/android/vpndialogs/ManageDialog;->mDataReceived:Landroid/widget/TextView;

    new-array v4, v10, [Ljava/lang/Object;

    aget-object v5, v0, v9

    aput-object v5, v4, v8

    aget-object v5, v0, v10

    aput-object v5, v4, v9

    invoke-virtual {p0, v13, v4}, Lcom/android/vpndialogs/ManageDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v3, p0, Lcom/android/vpndialogs/ManageDialog;->mDataTransmitted:Landroid/widget/TextView;

    new-array v4, v10, [Ljava/lang/Object;

    const/16 v5, 0x9

    aget-object v5, v0, v5

    aput-object v5, v4, v8

    const/16 v5, 0xa

    aget-object v5, v0, v5

    aput-object v5, v4, v9

    invoke-virtual {p0, v13, v4}, Lcom/android/vpndialogs/ManageDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :cond_1
    iget-object v3, p0, Lcom/android/vpndialogs/ManageDialog;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 170
    .end local v0           #numbers:[Ljava/lang/String;
    :cond_2
    return v9
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 131
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/android/vpndialogs/ManageDialog;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->configureIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    const/4 v1, -0x3

    if-ne p2, v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/vpndialogs/ManageDialog;->mService:Landroid/net/IConnectivityManager;

    iget-object v2, p0, Lcom/android/vpndialogs/ManageDialog;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    const-string v3, "[Legacy VPN]"

    invoke-interface {v1, v2, v3}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "VpnManage"

    const-string v2, "onClick"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    invoke-virtual {p0}, Lcom/android/vpndialogs/ManageDialog;->finish()V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/vpndialogs/ManageDialog;->finish()V

    .line 145
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 122
    iget-object v0, p0, Lcom/android/vpndialogs/ManageDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/vpndialogs/ManageDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 124
    iget-object v0, p0, Lcom/android/vpndialogs/ManageDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 126
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 62
    invoke-virtual {p0}, Lcom/android/vpndialogs/ManageDialog;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 63
    const-string v4, "VpnManage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/vpndialogs/ManageDialog;->getCallingPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cannot start this activity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0}, Lcom/android/vpndialogs/ManageDialog;->finish()V

    .line 117
    :goto_0
    return-void

    .line 69
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vpndialogs/ManageDialog;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "config"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/VpnConfig;

    iput-object v4, p0, Lcom/android/vpndialogs/ManageDialog;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 71
    const-string v4, "connectivity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vpndialogs/ManageDialog;->mService:Landroid/net/IConnectivityManager;

    .line 74
    const v4, 0x7f020001

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 75
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/vpndialogs/ManageDialog;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 76
    const v4, 0x7f050004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/vpndialogs/ManageDialog;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_1
    const v4, 0x7f050005

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/vpndialogs/ManageDialog;->mDuration:Landroid/widget/TextView;

    .line 79
    const v4, 0x7f050006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/vpndialogs/ManageDialog;->mDataTransmitted:Landroid/widget/TextView;

    .line 80
    const v4, 0x7f050007

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/vpndialogs/ManageDialog;->mDataReceived:Landroid/widget/TextView;

    .line 82
    iget-object v4, p0, Lcom/android/vpndialogs/ManageDialog;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    const-string v5, "[Legacy VPN]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 83
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x108009b

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f030003

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f030005

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vpndialogs/ManageDialog;->mDialog:Landroid/app/AlertDialog;

    .line 102
    :goto_1
    iget-object v4, p0, Lcom/android/vpndialogs/ManageDialog;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->configureIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_2

    .line 103
    iget-object v4, p0, Lcom/android/vpndialogs/ManageDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v5, -0x1

    const v6, 0x7f030004

    invoke-virtual {p0, v6}, Lcom/android/vpndialogs/ManageDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v5, v6, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 106
    :cond_2
    iget-object v4, p0, Lcom/android/vpndialogs/ManageDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 107
    iget-object v4, p0, Lcom/android/vpndialogs/ManageDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 109
    iget-object v4, p0, Lcom/android/vpndialogs/ManageDialog;->mHandler:Landroid/os/Handler;

    if-nez v4, :cond_3

    .line 110
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v4, p0, Lcom/android/vpndialogs/ManageDialog;->mHandler:Landroid/os/Handler;

    .line 112
    :cond_3
    iget-object v4, p0, Lcom/android/vpndialogs/ManageDialog;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 113
    .end local v3           #view:Landroid/view/View;
    :catch_0
    move-exception v1

    .line 114
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "VpnManage"

    const-string v5, "onResume"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    invoke-virtual {p0}, Lcom/android/vpndialogs/ManageDialog;->finish()V

    goto/16 :goto_0

    .line 91
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #view:Landroid/view/View;
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/android/vpndialogs/ManageDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 92
    .local v2, pm:Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/android/vpndialogs/ManageDialog;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 93
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f030005

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vpndialogs/ManageDialog;->mDialog:Landroid/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
