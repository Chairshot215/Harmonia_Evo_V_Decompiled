.class public Lcom/muvee/video/trimer/MBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MBroadcastReceiver.java"

# interfaces
.implements Lcom/muvee/video/trimer/MmvtConstant;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.muvee.video.trimer.MBroadcastReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 21
    const-string v8, "com.muvee.video.trimer.MBroadcastReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "::TrimIt onReceive:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 24
    .local v4, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.muvee.video.trimer.preference"

    invoke-virtual {v8, v9, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 26
    .local v3, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 57
    const-string v8, "com.muvee.video.trimer.MBroadcastReceiver"

    const-string v9, "::CLEAR notification onReceive:"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/16 v8, 0x3039

    invoke-virtual {v4, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 60
    const-string v8, "com.muvee.video.trimer.TRIM_FILE_PATH"

    invoke-interface {v3, v8, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, filePath:Ljava/lang/String;
    const-string v8, "com.muvee.video.trimer.MBroadcastReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, ":: KEY_TRIM_FILE_PATH: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v8, "com.muvee.video.trimer.MBroadcastReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, ":: unmountedDrive: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, unmountedDrive:Ljava/lang/String;
    const/4 v1, 0x0

    .line 66
    .local v1, fileExists:Z
    if-eqz v2, :cond_0

    .line 67
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "file://"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v1, v6

    .line 69
    :goto_0
    const-string v8, "com.muvee.video.trimer.MBroadcastReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, ":: file exists: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    const-string v8, "com.muvee.video.trimer.TRIMER_CLOSED"

    invoke-interface {v3, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_1

    if-nez v1, :cond_1

    .line 73
    const-string v8, "com.muvee.video.trimer.TRIMING"

    invoke-interface {v3, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 74
    const v8, 0x7f040006

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 79
    :goto_1
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 80
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v8, "com.muvee.video.trimer.MBroadcastReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "::onReceive: left = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "com.muvee.video.trimer.TRIM_LEFT"

    invoke-interface {v3, v10, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " right = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 81
    const-string v10, "com.muvee.video.trimer.TRIM_RIGHT"

    const/4 v11, -0x1

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 80
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v8, "com.muvee.video.trimer.TRIM_DATA"

    invoke-interface {v0, v8, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    const-string v8, "com.muvee.video.trimer.TRIM_FILE_PATH"

    invoke-interface {v0, v8, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 84
    const-string v8, "com.muvee.video.trimer.TRIMING"

    invoke-interface {v0, v8, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 85
    const-string v6, "com.muvee.video.trimer.TRIMER_CLOSED"

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 90
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v1           #fileExists:Z
    .end local v2           #filePath:Ljava/lang/String;
    .end local v5           #unmountedDrive:Ljava/lang/String;
    :cond_1
    return-void

    .restart local v1       #fileExists:Z
    .restart local v2       #filePath:Ljava/lang/String;
    .restart local v5       #unmountedDrive:Ljava/lang/String;
    :cond_2
    move v1, v7

    .line 68
    goto :goto_0

    .line 76
    :cond_3
    const v8, 0x7f040008

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
