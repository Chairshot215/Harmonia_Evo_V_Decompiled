.class public Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;
.super Landroid/app/ListActivity;
.source "EASPolicyNotSufficientDialog.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DIALOG_POLICY_DETAIL:I = 0x2

.field private static final DIALOG_WARNING_DESCRIPT:I = 0x1

.field public static final MODE_SHOW_DETAIL:I = 0x1

.field public static final MODE_SHOW_WARNING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "EASPolicyNotSufficientDialog"


# instance fields
.field private mContext:Landroid/content/Context;

.field mExAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

.field mMode:I

.field mProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->mProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    .line 39
    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->mExAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 40
    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->mContext:Landroid/content/Context;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->mMode:I

    return-void
.end method


# virtual methods
.method getPolicyDescript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "policyName"

    .prologue
    .line 149
    sget-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->DeviceEncryptionEnabled:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const v0, 0x7f0b02f5

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    .line 151
    :cond_0
    sget-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->RequireDeviceEncryption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    const v0, 0x7f0b02f6

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_1
    sget-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->RequireSignedSMIMEMessages:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    const v0, 0x7f0b02f7

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_2
    sget-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->RequireEncryptedSMIMEMessages:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    const v0, 0x7f0b02f8

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_3
    sget-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->RequireSignedSMIMEAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 158
    const v0, 0x7f0b02f9

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_4
    sget-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->RequireEncryptionSMIMEAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 160
    const v0, 0x7f0b02fa

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_5
    sget-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowSMIMEEncryptionAlgorithmNegotiation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 162
    const v0, 0x7f0b02fb

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_6
    sget-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowStorageCard:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 164
    const v0, 0x7f0b02fc

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_7
    sget-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowCamera:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 166
    const v0, 0x7f0b02fd

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 167
    :cond_8
    sget-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowUnsignedApplications:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 168
    const v0, 0x7f0b02fe

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 169
    :cond_9
    sget-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowUnsignedInstallationPackages:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 170
    const v0, 0x7f0b02ff

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 171
    :cond_a
    sget-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowWiFi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 172
    const v0, 0x7f0b0300

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 173
    :cond_b
    sget-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowTextMessaging:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 174
    const v0, 0x7f0b0301

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 175
    :cond_c
    sget-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowPOPIMAPEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 176
    const v0, 0x7f0b0302

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 177
    :cond_d
    sget-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowBluetooth:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 178
    const v0, 0x7f0b0303

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 179
    :cond_e
    sget-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowIrDA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 180
    const v0, 0x7f0b0304

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 181
    :cond_f
    sget-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowDesktopSync:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 182
    const v0, 0x7f0b0305

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 183
    :cond_10
    sget-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowSMIMESoftCerts:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 184
    const v0, 0x7f0b0306

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 185
    :cond_11
    sget-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowBrowser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 186
    const v0, 0x7f0b0307

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 187
    :cond_12
    sget-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowConsumerEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 188
    const v0, 0x7f0b0308

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 189
    :cond_13
    sget-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowRemoteDesktop:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 190
    const v0, 0x7f0b0309

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 191
    :cond_14
    sget-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowInternetSharing:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 192
    const v0, 0x7f0b030a

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 193
    :cond_15
    sget-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->ApprovedApplicationList:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 194
    const v0, 0x7f0b030b

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 195
    :cond_16
    sget-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->UnapprovedInROMApplicationList:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 196
    const v0, 0x7f0b030c

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 198
    :cond_17
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method getPolicyIncompatibleDetailDialog()Landroid/app/Dialog;
    .locals 11

    .prologue
    .line 106
    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 107
    .local v0, factory:Landroid/view/LayoutInflater;
    const v8, 0x7f030033

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 108
    .local v7, warningsView:Landroid/view/View;
    const v8, 0x7f09012a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 110
    .local v3, incompatibleListLayout:Landroid/widget/LinearLayout;
    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->mProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    invoke-static {v8}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->getUnsupportList(Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)Ljava/util/ArrayList;

    move-result-object v2

    .line 113
    .local v2, incompatibleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 114
    .local v5, str:Ljava/lang/String;
    new-instance v6, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->mContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 115
    .local v6, textView:Landroid/widget/TextView;
    invoke-virtual {p0, v5}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getPolicyDescript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, policy:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 117
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :cond_0
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 122
    .end local v4           #policy:Ljava/lang/String;
    .end local v5           #str:Ljava/lang/String;
    .end local v6           #textView:Landroid/widget/TextView;
    :cond_1
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0b02b0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x1080027

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0b0291

    new-instance v10, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog$5;

    invoke-direct {v10, p0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog$5;-><init>(Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog$4;

    invoke-direct {v9, p0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog$4;-><init>(Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    return-object v8
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    .line 47
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget-boolean v0, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EASPolicyNotSufficientDialog"

    const-string v1, "- onCreate()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    iput-object p0, p0, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "provisionDoc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->mProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    .line 53
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->mProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    if-nez v0, :cond_1

    .line 54
    const-string v0, "EASPolicyNotSufficientDialog"

    const-string v1, "onCreate(): Error, mProvisionDoc is null"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->finish()V

    .line 65
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->mMode:I

    .line 60
    iget v0, p0, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->mMode:I

    if-ne v0, v3, :cond_2

    .line 61
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->showDialog(I)V

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->showDialog(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    .line 68
    sget-boolean v1, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EASPolicyNotSufficientDialog"

    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->mExAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateDialog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 70
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 102
    const/4 v1, 0x0

    invoke-super {p0, p1, v1}, Landroid/app/ListActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 72
    :pswitch_0
    const v1, 0x7f0b02ef

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, message:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b02f2

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b02ee

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0291

    new-instance v3, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog$3;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog$3;-><init>(Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b02f0

    new-instance v3, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog$2;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog$2;-><init>(Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog$1;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog$1;-><init>(Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 99
    .end local v0           #message:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/EASPolicyNotSufficientDialog;->getPolicyIncompatibleDetailDialog()Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
