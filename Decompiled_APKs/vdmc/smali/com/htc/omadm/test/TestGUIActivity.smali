.class public Lcom/htc/omadm/test/TestGUIActivity;
.super Landroid/app/ListActivity;
.source "TestGUIActivity.java"


# static fields
.field protected static final CANCEL_BUTTON:I = 0x2

.field protected static final DSA_MENU_AND_CANCEL_BUTTON:I = 0x4

.field protected static final NO_BUTTON:I = 0x0

.field protected static final OK_AND_CANCEL_BUTTON:I = 0x3

.field protected static final OK_BUTTON:I = 0x1


# instance fields
.field private final DBG:Z

.field private LOG_TAG:Ljava/lang/String;

.field protected mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

.field mCONTEXT:Landroid/content/Context;

.field mDMGuiFUMO:Lcom/htc/omadm/gui/SprintGuiPrototype;

.field mDMGuiHFA:Lcom/htc/omadm/gui/SprintGuiPrototype;

.field mGUICallBack:Landroid/os/Handler;

.field protected mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mStatus:I

.field wording1:Ljava/lang/String;

.field wording1500:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 38
    const-string v0, "TestMainActivity"

    iput-object v0, p0, Lcom/htc/omadm/test/TestGUIActivity;->LOG_TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/omadm/test/TestGUIActivity;->DBG:Z

    .line 41
    iput-object v1, p0, Lcom/htc/omadm/test/TestGUIActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 42
    iput-object v1, p0, Lcom/htc/omadm/test/TestGUIActivity;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/omadm/test/TestGUIActivity;->mStatus:I

    .line 54
    iput-object v1, p0, Lcom/htc/omadm/test/TestGUIActivity;->mDMGuiHFA:Lcom/htc/omadm/gui/SprintGuiPrototype;

    .line 55
    iput-object v1, p0, Lcom/htc/omadm/test/TestGUIActivity;->mDMGuiFUMO:Lcom/htc/omadm/gui/SprintGuiPrototype;

    .line 56
    iput-object v1, p0, Lcom/htc/omadm/test/TestGUIActivity;->mCONTEXT:Landroid/content/Context;

    .line 57
    new-instance v0, Lcom/htc/omadm/test/TestGUIActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/omadm/test/TestGUIActivity$1;-><init>(Lcom/htc/omadm/test/TestGUIActivity;)V

    iput-object v0, p0, Lcom/htc/omadm/test/TestGUIActivity;->mGUICallBack:Landroid/os/Handler;

    .line 221
    const-string v0, "1"

    iput-object v0, p0, Lcom/htc/omadm/test/TestGUIActivity;->wording1:Ljava/lang/String;

    .line 222
    const-string v0, "012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789"

    iput-object v0, p0, Lcom/htc/omadm/test/TestGUIActivity;->wording1500:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/omadm/test/TestGUIActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/omadm/test/TestGUIActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected InitGUI()V
    .locals 5

    .prologue
    .line 218
    new-instance v0, Lcom/htc/omadm/gui/DMGuiHFA;

    iget-object v1, p0, Lcom/htc/omadm/test/TestGUIActivity;->mCONTEXT:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/omadm/test/TestGUIActivity;->mGUICallBack:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/omadm/test/TestGUIActivity;->LOG_TAG:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/omadm/gui/DMGuiHFA;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/omadm/test/TestGUIActivity;->mDMGuiHFA:Lcom/htc/omadm/gui/SprintGuiPrototype;

    .line 219
    new-instance v0, Lcom/htc/omadm/gui/DMGuiFUMO;

    iget-object v1, p0, Lcom/htc/omadm/test/TestGUIActivity;->mCONTEXT:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/omadm/test/TestGUIActivity;->mGUICallBack:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/omadm/test/TestGUIActivity;->LOG_TAG:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/omadm/gui/DMGuiFUMO;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/omadm/test/TestGUIActivity;->mDMGuiFUMO:Lcom/htc/omadm/gui/SprintGuiPrototype;

    .line 220
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    iput-object p0, p0, Lcom/htc/omadm/test/TestGUIActivity;->mCONTEXT:Landroid/content/Context;

    .line 83
    invoke-virtual {p0}, Lcom/htc/omadm/test/TestGUIActivity;->InitGUI()V

    .line 84
    const-string v1, "OMADM Test client"

    invoke-virtual {p0, v1}, Lcom/htc/omadm/test/TestGUIActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "CIDC"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "CIPRL"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "NIPRL(run session after 8 secs)"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "CIFUMO"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "HFA"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "NIDC(run session after 8 secs)"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "CIDC->NIDC->NIPRL"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "FUMO Report success"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "NI_BACKGROUND"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "NI_INFORMATIVE"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "NI_INTERACTIVE"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "HFA 407"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "HFA 1012"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "FUMO INSTALL"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "HFA SUCCESS"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "HFA carrier content"

    aput-object v4, v2, v3

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 95
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/htc/omadm/test/TestGUIActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const-wide/16 v6, 0x1f40

    const/4 v5, 0x7

    const/4 v4, 0x0

    .line 100
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.omadm.core.start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/omadm/test/TestGUIActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    packed-switch p3, :pswitch_data_0

    .line 214
    :goto_0
    return-void

    .line 108
    :pswitch_0
    const-string v1, "SESSION_TYPE"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    :goto_1
    const-string v1, "com.redbend.vdmc"

    const-string v2, "com.htc.omadm.core.DMService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0}, Lcom/htc/omadm/test/TestGUIActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 111
    :pswitch_1
    const-string v1, "SESSION_TYPE"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 114
    :pswitch_2
    new-instance v1, Lcom/htc/omadm/test/TestGUIActivity$2;

    invoke-direct {v1, p0}, Lcom/htc/omadm/test/TestGUIActivity$2;-><init>(Lcom/htc/omadm/test/TestGUIActivity;)V

    invoke-virtual {v1, v4, v6, v7}, Lcom/htc/omadm/test/TestGUIActivity$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 131
    :pswitch_3
    const-string v1, "com.htc.omadm.trigger"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v1, "SESSION_TYPE"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0}, Lcom/htc/omadm/test/TestGUIActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 137
    :pswitch_4
    const-string v1, "SESSION_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 140
    :pswitch_5
    new-instance v1, Lcom/htc/omadm/test/TestGUIActivity$3;

    invoke-direct {v1, p0}, Lcom/htc/omadm/test/TestGUIActivity$3;-><init>(Lcom/htc/omadm/test/TestGUIActivity;)V

    invoke-virtual {v1, v4, v6, v7}, Lcom/htc/omadm/test/TestGUIActivity$3;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 157
    :pswitch_6
    const-string v1, "SESSION_TYPE"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    const-string v1, "com.redbend.vdmc"

    const-string v2, "com.htc.omadm.core.DMService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0}, Lcom/htc/omadm/test/TestGUIActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 161
    new-instance v1, Lcom/htc/omadm/test/TestGUIActivity$4;

    invoke-direct {v1, p0}, Lcom/htc/omadm/test/TestGUIActivity$4;-><init>(Lcom/htc/omadm/test/TestGUIActivity;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Lcom/htc/omadm/test/TestGUIActivity$4;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 178
    :pswitch_7
    const-string v1, "SESSION_TYPE"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 182
    :pswitch_8
    const-string v1, "SESSION_TYPE"

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 186
    :pswitch_9
    const-string v1, "SESSION_TYPE"

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 190
    :pswitch_a
    const-string v1, "SESSION_TYPE"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 194
    :pswitch_b
    iget-object v1, p0, Lcom/htc/omadm/test/TestGUIActivity;->mDMGuiHFA:Lcom/htc/omadm/gui/SprintGuiPrototype;

    const/16 v2, 0x197

    invoke-virtual {v1, v2}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showError(I)V

    goto/16 :goto_1

    .line 197
    :pswitch_c
    iget-object v1, p0, Lcom/htc/omadm/test/TestGUIActivity;->mDMGuiHFA:Lcom/htc/omadm/gui/SprintGuiPrototype;

    const/16 v2, 0x3f4

    invoke-virtual {v1, v2}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showError(I)V

    goto/16 :goto_1

    .line 200
    :pswitch_d
    iget-object v1, p0, Lcom/htc/omadm/test/TestGUIActivity;->mDMGuiFUMO:Lcom/htc/omadm/gui/SprintGuiPrototype;

    iget-object v2, p0, Lcom/htc/omadm/test/TestGUIActivity;->wording1500:Ljava/lang/String;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showInstall(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 203
    :pswitch_e
    iget-object v1, p0, Lcom/htc/omadm/test/TestGUIActivity;->mDMGuiHFA:Lcom/htc/omadm/gui/SprintGuiPrototype;

    invoke-virtual {v1}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showSuccess()V

    goto/16 :goto_1

    .line 206
    :pswitch_f
    iget-object v1, p0, Lcom/htc/omadm/test/TestGUIActivity;->mDMGuiHFA:Lcom/htc/omadm/gui/SprintGuiPrototype;

    const v2, 0x9c40

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showOther(II)V

    goto/16 :goto_1

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
