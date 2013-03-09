.class public Lcom/htc/omadm/tool/SetInfoActivity;
.super Landroid/preference/PreferenceActivity;
.source "SetInfoActivity.java"


# static fields
.field private static final DBG:Z = true

.field public static GetText:Ljava/lang/String; = null

.field public static GetTitle:Ljava/lang/String; = null

.field private static final Server_Addr:I = 0x0

.field private static final Server_Port:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SetInfoActivity"


# instance fields
.field public mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mEdit:Landroid/widget/EditText;

.field mFutureLib:Lcom/htc/omadm/aidl/IDmFutureDial;

.field mFutureLibBind:Z

.field private root:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, ""

    sput-object v0, Lcom/htc/omadm/tool/SetInfoActivity;->GetText:Ljava/lang/String;

    .line 35
    const-string v0, ""

    sput-object v0, Lcom/htc/omadm/tool/SetInfoActivity;->GetTitle:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/omadm/tool/SetInfoActivity;->mFutureLib:Lcom/htc/omadm/aidl/IDmFutureDial;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/omadm/tool/SetInfoActivity;->mFutureLibBind:Z

    .line 39
    new-instance v0, Lcom/htc/omadm/tool/SetInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/omadm/tool/SetInfoActivity$1;-><init>(Lcom/htc/omadm/tool/SetInfoActivity;)V

    iput-object v0, p0, Lcom/htc/omadm/tool/SetInfoActivity;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private ErrorDialog()V
    .locals 3

    .prologue
    .line 244
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 245
    .local v0, ErrorAlertDialog:Landroid/app/AlertDialog$Builder;
    const-string v2, "Illegal Input"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 246
    const-string v2, "Input cannot be empty!"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 247
    new-instance v1, Lcom/htc/omadm/tool/SetInfoActivity$8;

    invoke-direct {v1, p0}, Lcom/htc/omadm/tool/SetInfoActivity$8;-><init>(Lcom/htc/omadm/tool/SetInfoActivity;)V

    .line 251
    .local v1, OkClick:Landroid/content/DialogInterface$OnClickListener;
    const-string v2, "OK"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 252
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 253
    return-void
.end method

.method static synthetic access$000(Lcom/htc/omadm/tool/SetInfoActivity;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/omadm/tool/SetInfoActivity;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/omadm/tool/SetInfoActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/omadm/tool/SetInfoActivity;->mEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/omadm/tool/SetInfoActivity;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/omadm/tool/SetInfoActivity;->mEdit:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/omadm/tool/SetInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/omadm/tool/SetInfoActivity;->ErrorDialog()V

    return-void
.end method

.method private bind_isOK()Z
    .locals 3

    .prologue
    .line 54
    :goto_0
    iget-boolean v1, p0, Lcom/htc/omadm/tool/SetInfoActivity;->mFutureLibBind:Z

    if-nez v1, :cond_0

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/omadm/aidl/IDmFutureDial;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/omadm/tool/SetInfoActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/omadm/tool/SetInfoActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/omadm/tool/SetInfoActivity;->mFutureLibBind:Z

    goto :goto_0

    .line 58
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-boolean v1, p0, Lcom/htc/omadm/tool/SetInfoActivity;->mFutureLibBind:Z

    return v1
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 6

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/htc/omadm/tool/SetInfoActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/omadm/tool/SetInfoActivity;->root:Landroid/preference/PreferenceScreen;

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/omadm/tool/SetInfoActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 84
    .local v0, ServerAddrPref:Landroid/preference/PreferenceScreen;
    const-string v3, "serveraddr"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 85
    iget-object v3, p0, Lcom/htc/omadm/tool/SetInfoActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f03001c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v3, p0, Lcom/htc/omadm/tool/SetInfoActivity;->mFutureLib:Lcom/htc/omadm/aidl/IDmFutureDial;

    invoke-interface {v3}, Lcom/htc/omadm/aidl/IDmFutureDial;->Get_ServerAdrAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 88
    new-instance v3, Lcom/htc/omadm/tool/SetInfoActivity$2;

    invoke-direct {v3, p0}, Lcom/htc/omadm/tool/SetInfoActivity$2;-><init>(Lcom/htc/omadm/tool/SetInfoActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 102
    iget-object v3, p0, Lcom/htc/omadm/tool/SetInfoActivity;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 105
    invoke-virtual {p0}, Lcom/htc/omadm/tool/SetInfoActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 106
    .local v1, ServerPortPref:Landroid/preference/PreferenceScreen;
    const-string v3, "serverport"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Lcom/htc/omadm/tool/SetInfoActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f03001d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v3, p0, Lcom/htc/omadm/tool/SetInfoActivity;->mFutureLib:Lcom/htc/omadm/aidl/IDmFutureDial;

    invoke-interface {v3}, Lcom/htc/omadm/aidl/IDmFutureDial;->Get_ServerAdrPort()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 110
    new-instance v3, Lcom/htc/omadm/tool/SetInfoActivity$3;

    invoke-direct {v3, p0}, Lcom/htc/omadm/tool/SetInfoActivity$3;-><init>(Lcom/htc/omadm/tool/SetInfoActivity;)V

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 124
    iget-object v3, p0, Lcom/htc/omadm/tool/SetInfoActivity;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0           #ServerAddrPref:Landroid/preference/PreferenceScreen;
    .end local v1           #ServerPortPref:Landroid/preference/PreferenceScreen;
    :goto_0
    iget-object v3, p0, Lcom/htc/omadm/tool/SetInfoActivity;->root:Landroid/preference/PreferenceScreen;

    return-object v3

    .line 126
    :catch_0
    move-exception v2

    .line 128
    .local v2, ex:Ljava/lang/Exception;
    const-string v3, "SetInfoActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-direct {p0}, Lcom/htc/omadm/tool/SetInfoActivity;->bind_isOK()Z

    .line 65
    iput-object p0, p0, Lcom/htc/omadm/tool/SetInfoActivity;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    const v8, 0x7f030004

    const v7, 0x7f030003

    .line 138
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 139
    .local v0, dialoglayout:Landroid/view/LayoutInflater;
    const v4, 0x7f020001

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 140
    .local v3, textEntryView:Landroid/view/View;
    const v4, 0x7f040003

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 141
    .local v2, edit:Landroid/widget/EditText;
    packed-switch p1, :pswitch_data_0

    .line 216
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v4

    :goto_0
    return-object v4

    .line 144
    :pswitch_0
    :try_start_0
    iget-object v4, p0, Lcom/htc/omadm/tool/SetInfoActivity;->mFutureLib:Lcom/htc/omadm/aidl/IDmFutureDial;

    invoke-interface {v4}, Lcom/htc/omadm/aidl/IDmFutureDial;->Get_ServerAdrAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v4, p0, Lcom/htc/omadm/tool/SetInfoActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f03001c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/omadm/tool/SetInfoActivity;->GetTitle:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/htc/omadm/tool/SetInfoActivity;->GetTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/htc/omadm/tool/SetInfoActivity$5;

    invoke-direct {v5, p0, v3}, Lcom/htc/omadm/tool/SetInfoActivity$5;-><init>(Lcom/htc/omadm/tool/SetInfoActivity;Landroid/view/View;)V

    invoke-virtual {v4, v7, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/htc/omadm/tool/SetInfoActivity$4;

    invoke-direct {v5, p0}, Lcom/htc/omadm/tool/SetInfoActivity$4;-><init>(Lcom/htc/omadm/tool/SetInfoActivity;)V

    invoke-virtual {v4, v8, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    const-string v4, "SetInfoActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EXCEPTION:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 180
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v4, p0, Lcom/htc/omadm/tool/SetInfoActivity;->mFutureLib:Lcom/htc/omadm/aidl/IDmFutureDial;

    invoke-interface {v4}, Lcom/htc/omadm/aidl/IDmFutureDial;->Get_ServerAdrPort()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v4, p0, Lcom/htc/omadm/tool/SetInfoActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f03001d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/omadm/tool/SetInfoActivity;->GetTitle:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    :goto_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/htc/omadm/tool/SetInfoActivity;->GetTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/htc/omadm/tool/SetInfoActivity$7;

    invoke-direct {v5, p0, v3}, Lcom/htc/omadm/tool/SetInfoActivity$7;-><init>(Lcom/htc/omadm/tool/SetInfoActivity;Landroid/view/View;)V

    invoke-virtual {v4, v7, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/htc/omadm/tool/SetInfoActivity$6;

    invoke-direct {v5, p0}, Lcom/htc/omadm/tool/SetInfoActivity$6;-><init>(Lcom/htc/omadm/tool/SetInfoActivity;)V

    invoke-virtual {v4, v8, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_0

    .line 182
    :catch_1
    move-exception v1

    .line 183
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    const-string v4, "SetInfoActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EXCEPTION:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/omadm/tool/SetInfoActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/tool/SetInfoActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 73
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 74
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 221
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 222
    const v2, 0x7f040003

    invoke-virtual {p2, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 224
    .local v1, edit:Landroid/widget/EditText;
    packed-switch p1, :pswitch_data_0

    .line 241
    :goto_0
    return-void

    .line 226
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/omadm/tool/SetInfoActivity;->mFutureLib:Lcom/htc/omadm/aidl/IDmFutureDial;

    invoke-interface {v2}, Lcom/htc/omadm/aidl/IDmFutureDial;->Get_ServerAdrAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 239
    const-string v2, "SetInfoActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EXCEPTION:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/omadm/tool/SetInfoActivity;->mFutureLib:Lcom/htc/omadm/aidl/IDmFutureDial;

    invoke-interface {v2}, Lcom/htc/omadm/aidl/IDmFutureDial;->Get_ServerAdrPort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
