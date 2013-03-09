.class public final Lcom/android/settings/framework/request/HtcUakRequest;
.super Ljava/lang/Object;
.source "HtcUakRequest.java"


# static fields
.field private static isLongPressGo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/framework/request/HtcUakRequest;->isLongPressGo:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onHandleUakEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v12, 0x61

    const/4 v8, 0x1

    const/high16 v11, 0x1000

    const/4 v9, 0x0

    .line 32
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    const-string v10, "ACTION_UAK_TRIGGLE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 40
    const-string v10, "EXTRA_UAK_KEY_TYPE"

    invoke-virtual {p1, v10, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 41
    .local v4, hwKeyCode:I
    const-string v10, "EXTRA_UAK_KEY_EVENT_LONGPRESS"

    invoke-virtual {p1, v10, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 43
    .local v5, isLongPress:Z
    if-eqz v4, :cond_0

    .line 44
    if-eqz v5, :cond_2

    if-ge v4, v12, :cond_2

    sput-boolean v8, Lcom/android/settings/framework/request/HtcUakRequest;->isLongPressGo:Z

    .line 45
    :cond_2
    new-instance v2, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;

    invoke-direct {v2}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;-><init>()V

    .line 46
    .local v2, data:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;
    invoke-static {p0, v4, v2}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->getUakInfo(Landroid/content/Context;ILcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 50
    iget-object v6, v2, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;->intentRecord:Ljava/lang/String;

    .line 52
    .local v6, record:Ljava/lang/String;
    if-lt v4, v12, :cond_5

    const/16 v10, 0x7a

    if-gt v4, v10, :cond_5

    .line 53
    if-eqz v5, :cond_0

    .line 54
    if-eqz v6, :cond_3

    const-string v10, ""

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 55
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v1, ap:Landroid/content/Intent;
    const/4 v8, 0x0

    :try_start_0
    invoke-static {v6, v8}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 63
    invoke-virtual {v1, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 58
    :catch_0
    move-exception v3

    .line 59
    .local v3, e:Ljava/net/URISyntaxException;
    const-string v8, "UAK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to transfer string uri to intent : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    const/4 v1, 0x0

    .line 61
    goto :goto_0

    .line 66
    .end local v1           #ap:Landroid/content/Intent;
    .end local v3           #e:Ljava/net/URISyntaxException;
    :cond_3
    new-instance v7, Landroid/content/Intent;

    sget-object v10, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->ACTION_UAK_HW_KEY_RESPONSER:Ljava/lang/String;

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v7, target:Landroid/content/Intent;
    const-string v10, "com.android.settings.extra.UAK_HW_KEY_INDEX"

    invoke-virtual {v7, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    sget-object v10, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->EXTRA_UAK_HW_KEY_PRESS_TYPE:Ljava/lang/String;

    if-eqz v5, :cond_4

    :goto_1
    invoke-virtual {v7, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    invoke-virtual {v7, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    move v8, v9

    .line 68
    goto :goto_1

    .line 75
    .end local v7           #target:Landroid/content/Intent;
    :cond_5
    if-eqz v6, :cond_6

    const-string v10, ""

    invoke-virtual {v10, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    if-eqz v5, :cond_8

    .line 76
    :cond_6
    new-instance v7, Landroid/content/Intent;

    sget-object v10, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->ACTION_UAK_HW_KEY_RESPONSER:Ljava/lang/String;

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .restart local v7       #target:Landroid/content/Intent;
    const-string v10, "com.android.settings.extra.UAK_HW_KEY_INDEX"

    invoke-virtual {v7, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    sget-object v10, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->EXTRA_UAK_HW_KEY_PRESS_TYPE:Ljava/lang/String;

    if-eqz v5, :cond_7

    :goto_2
    invoke-virtual {v7, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    invoke-virtual {v7, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    move v8, v9

    .line 78
    goto :goto_2

    .line 82
    .end local v7           #target:Landroid/content/Intent;
    :cond_8
    if-nez v5, :cond_0

    .line 83
    sget-boolean v8, Lcom/android/settings/framework/request/HtcUakRequest;->isLongPressGo:Z

    if-eqz v8, :cond_9

    .line 84
    sput-boolean v9, Lcom/android/settings/framework/request/HtcUakRequest;->isLongPressGo:Z

    .line 85
    if-lt v4, v12, :cond_0

    .line 88
    :cond_9
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 90
    .restart local v1       #ap:Landroid/content/Intent;
    const/4 v8, 0x0

    :try_start_1
    invoke-static {v6, v8}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 96
    invoke-virtual {v1, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 91
    :catch_1
    move-exception v3

    .line 92
    .restart local v3       #e:Ljava/net/URISyntaxException;
    const-string v8, "UAK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to transfer string uri to intent : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    const/4 v1, 0x0

    .line 94
    goto/16 :goto_0
.end method
