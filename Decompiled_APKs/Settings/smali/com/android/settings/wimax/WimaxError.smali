.class public Lcom/android/settings/wimax/WimaxError;
.super Ljava/lang/Object;
.source "WimaxError.java"


# static fields
.field private static HasPendingErrorMsg:Z = false

.field public static final TAG:Ljava/lang/String; = "WimaxError"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wimax/WimaxError;->HasPendingErrorMsg:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxError;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method

.method public static getHasPendingErrorMsg()Z
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/android/settings/wimax/WimaxError;->HasPendingErrorMsg:Z

    return v0
.end method


# virtual methods
.method public getErrorMsgId(I)Ljava/lang/String;
    .locals 2
    .parameter "errorCode"

    .prologue
    const v1, 0x7f0c0468

    .line 25
    sparse-switch p1, :sswitch_data_0

    .line 90
    const-string v0, ""

    :goto_0
    return-object v0

    .line 36
    :sswitch_0
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxError;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 39
    :sswitch_1
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxError;->mContext:Landroid/content/Context;

    const v1, 0x7f0c046b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 41
    :sswitch_2
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxError;->mContext:Landroid/content/Context;

    const v1, 0x7f0c046c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    :sswitch_3
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxError;->mContext:Landroid/content/Context;

    const v1, 0x7f0c046d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 47
    :sswitch_4
    const-string v0, ""

    goto :goto_0

    .line 56
    :sswitch_5
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxError;->mContext:Landroid/content/Context;

    const v1, 0x7f0c046a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :sswitch_6
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxError;->mContext:Landroid/content/Context;

    const v1, 0x7f0c046e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 60
    :sswitch_7
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxError;->mContext:Landroid/content/Context;

    const v1, 0x7f0c046f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 64
    :sswitch_8
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxError;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    :sswitch_9
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxError;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0470

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :sswitch_a
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxError;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0471

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :sswitch_b
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxError;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0472

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :sswitch_c
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxError;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0473

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :sswitch_d
    const-string v0, ""

    goto :goto_0

    .line 80
    :sswitch_e
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxError;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0475

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 82
    :sswitch_f
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxError;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0476

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 84
    :sswitch_10
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxError;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0469

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 88
    :sswitch_11
    const-string v0, ""

    goto/16 :goto_0

    .line 25
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x402 -> :sswitch_0
        0x407 -> :sswitch_0
        0x7d1 -> :sswitch_0
        0x7db -> :sswitch_0
        0x7dc -> :sswitch_0
        0x7e5 -> :sswitch_0
        0x7e6 -> :sswitch_0
        0x7e7 -> :sswitch_0
        0xe3f -> :sswitch_1
        0xe40 -> :sswitch_2
        0xe48 -> :sswitch_3
        0xe49 -> :sswitch_4
        0xe4a -> :sswitch_5
        0x4000 -> :sswitch_5
        0x47d1 -> :sswitch_5
        0x47db -> :sswitch_5
        0x47dc -> :sswitch_5
        0x4e35 -> :sswitch_5
        0x4e42 -> :sswitch_6
        0x4e43 -> :sswitch_7
        0x4e44 -> :sswitch_8
        0x4e45 -> :sswitch_9
        0x4e46 -> :sswitch_a
        0x4e47 -> :sswitch_b
        0x4e48 -> :sswitch_c
        0x4e49 -> :sswitch_d
        0x4e4b -> :sswitch_e
        0x4e4c -> :sswitch_f
        0x8000 -> :sswitch_10
        0x8001 -> :sswitch_11
    .end sparse-switch
.end method

.method public setHasPendingErrorMsg(Z)V
    .locals 3
    .parameter "hasPending"

    .prologue
    .line 99
    sput-boolean p1, Lcom/android/settings/wimax/WimaxError;->HasPendingErrorMsg:Z

    .line 100
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxError;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 101
    .local v0, manager:Landroid/app/NotificationManager;
    if-nez p1, :cond_0

    .line 102
    const v1, 0x7f020101

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 104
    :cond_0
    return-void
.end method
