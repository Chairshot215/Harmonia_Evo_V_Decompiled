.class public Lcom/htc/android/epst/MeidDialog;
.super Landroid/app/Activity;
.source "MeidDialog.java"


# static fields
.field private static final EVENT_SHOW_DIALOG:I


# instance fields
.field private DecMEID:Ljava/lang/String;

.field private HexMEID:Ljava/lang/String;

.field private MeidDialog:Lcom/htc/widget/HtcAlertDialog;

.field private lMeid:J

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private sDecMEID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/htc/android/epst/MeidDialog;->MeidDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/MeidDialog;->sDecMEID:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/MeidDialog;->DecMEID:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/htc/android/epst/MeidDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private getMEID()V
    .locals 12

    .prologue
    .line 29
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Lcom/htc/android/epst/MeidDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    iput-object v9, p0, Lcom/htc/android/epst/MeidDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 31
    iget-object v9, p0, Lcom/htc/android/epst/MeidDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/epst/MeidDialog;->HexMEID:Ljava/lang/String;

    .line 32
    iget-object v9, p0, Lcom/htc/android/epst/MeidDialog;->HexMEID:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0xe

    if-ne v9, v10, :cond_2

    .line 33
    iget-object v9, p0, Lcom/htc/android/epst/MeidDialog;->HexMEID:Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 34
    .local v6, lowbits:Ljava/lang/Long;
    const-string v9, "%010d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 35
    .local v5, lowValue:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/android/epst/MeidDialog;->HexMEID:Ljava/lang/String;

    const/16 v10, 0x8

    const/16 v11, 0xe

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 36
    .local v2, highbits:Ljava/lang/Long;
    const-string v9, "%08d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, highValue:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/epst/MeidDialog;->sDecMEID:Ljava/lang/String;

    .line 39
    iget-object v9, p0, Lcom/htc/android/epst/MeidDialog;->sDecMEID:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    .line 43
    .local v4, length:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 44
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 45
    iget-object v9, p0, Lcom/htc/android/epst/MeidDialog;->sDecMEID:Ljava/lang/String;

    add-int/lit8 v10, v3, 0x3

    invoke-virtual {v9, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 46
    .local v7, s1:Ljava/lang/String;
    add-int/lit8 v9, v4, -0x3

    if-ne v3, v9, :cond_0

    const-string v8, ""

    .line 47
    .local v8, s2:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    .line 46
    .end local v8           #s2:Ljava/lang/String;
    :cond_0
    const-string v8, "-"

    goto :goto_1

    .line 50
    .end local v7           #s1:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/epst/MeidDialog;->DecMEID:Ljava/lang/String;

    .line 52
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/epst/MeidDialog;->HexMEID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/epst/MeidDialog;->HexMEID:Ljava/lang/String;

    .line 61
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #highValue:Ljava/lang/String;
    .end local v2           #highbits:Ljava/lang/Long;
    .end local v3           #i:I
    .end local v4           #length:I
    .end local v5           #lowValue:Ljava/lang/String;
    .end local v6           #lowbits:Ljava/lang/Long;
    :goto_2
    return-void

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/epst/MeidDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0401fb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/epst/MeidDialog;->HexMEID:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/htc/android/epst/MeidDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0401fb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/epst/MeidDialog;->DecMEID:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 79
    packed-switch p1, :pswitch_data_0

    .line 103
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 81
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/epst/MeidDialog;->MeidDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/epst/MeidDialog;->removeDialog(I)V

    .line 84
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0401fa

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/MeidDialog;->DecMEID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Hex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/MeidDialog;->HexMEID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/htc/android/epst/MeidDialog$1;

    invoke-direct {v2, p0}, Lcom/htc/android/epst/MeidDialog$1;-><init>(Lcom/htc/android/epst/MeidDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/MeidDialog;->MeidDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 94
    iget-object v0, p0, Lcom/htc/android/epst/MeidDialog;->MeidDialog:Lcom/htc/widget/HtcAlertDialog;

    new-instance v1, Lcom/htc/android/epst/MeidDialog$2;

    invoke-direct {v1, p0}, Lcom/htc/android/epst/MeidDialog$2;-><init>(Lcom/htc/android/epst/MeidDialog;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 100
    iget-object v0, p0, Lcom/htc/android/epst/MeidDialog;->MeidDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 72
    invoke-direct {p0}, Lcom/htc/android/epst/MeidDialog;->getMEID()V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/epst/MeidDialog;->showDialog(I)V

    .line 74
    return-void
.end method
