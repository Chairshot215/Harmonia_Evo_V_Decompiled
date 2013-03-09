.class public Lcom/htc/dlnamediaserver/Settings;
.super Landroid/app/Activity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnamediaserver/Settings$RemoteServiceConnection;,
        Lcom/htc/dlnamediaserver/Settings$ActionHandler;,
        Lcom/htc/dlnamediaserver/Settings$HandlerAction;,
        Lcom/htc/dlnamediaserver/Settings$ButtonState;
    }
.end annotation


# instance fields
.field private mActionHandler:Lcom/htc/dlnamediaserver/Settings$ActionHandler;

.field private mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentButtonState:Lcom/htc/dlnamediaserver/Settings$ButtonState;

.field private mHTCMediaServerManager:Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;

.field private mLoadingDialog:Landroid/app/ProgressDialog;

.field private mMountChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mServerServiceThread:Lcom/htc/dlnamediaserver/DLNAMediaServerThread;

.field private mService:Landroid/content/Intent;

.field private mServiceCommunication:Lcom/htc/dlnamediaserver/ServiceCommunication;

.field private mServiceConnection:Lcom/htc/dlnamediaserver/Settings$RemoteServiceConnection;

.field private mShareFolder:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/htc/dlnamediaserver/Settings;->mServerServiceThread:Lcom/htc/dlnamediaserver/DLNAMediaServerThread;

    .line 37
    iput-object v1, p0, Lcom/htc/dlnamediaserver/Settings;->mService:Landroid/content/Intent;

    .line 38
    iput-object v1, p0, Lcom/htc/dlnamediaserver/Settings;->mServiceCommunication:Lcom/htc/dlnamediaserver/ServiceCommunication;

    .line 39
    iput-object v1, p0, Lcom/htc/dlnamediaserver/Settings;->mServiceConnection:Lcom/htc/dlnamediaserver/Settings$RemoteServiceConnection;

    .line 40
    sget-object v0, Lcom/htc/dlnamediaserver/Settings$ButtonState;->UNKNOWN:Lcom/htc/dlnamediaserver/Settings$ButtonState;

    iput-object v0, p0, Lcom/htc/dlnamediaserver/Settings;->mCurrentButtonState:Lcom/htc/dlnamediaserver/Settings$ButtonState;

    .line 41
    iput-object v1, p0, Lcom/htc/dlnamediaserver/Settings;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    iput-object v1, p0, Lcom/htc/dlnamediaserver/Settings;->mMountChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 43
    iput-object v1, p0, Lcom/htc/dlnamediaserver/Settings;->mActionHandler:Lcom/htc/dlnamediaserver/Settings$ActionHandler;

    .line 44
    iput-object v1, p0, Lcom/htc/dlnamediaserver/Settings;->mShareFolder:Landroid/content/Intent;

    .line 45
    iput-object v1, p0, Lcom/htc/dlnamediaserver/Settings;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 46
    iput-object v1, p0, Lcom/htc/dlnamediaserver/Settings;->mHTCMediaServerManager:Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;

    .line 271
    return-void
.end method

.method private ConfigServer()V
    .locals 5

    .prologue
    .line 88
    const v4, 0x7f070005

    invoke-virtual {p0, v4}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, theFriendlyName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    iget-object v4, p0, Lcom/htc/dlnamediaserver/Settings;->mHTCMediaServerManager:Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;

    invoke-virtual {v4, v0}, Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;->SetFriendlyName(Ljava/lang/String;)Z

    .line 92
    :cond_0
    const v4, 0x7f07000c

    invoke-virtual {p0, v4}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    .line 93
    .local v3, theVideo:Z
    const v4, 0x7f070008

    invoke-virtual {p0, v4}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 94
    .local v1, theMusic:Z
    const v4, 0x7f07000a

    invoke-virtual {p0, v4}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 95
    .local v2, thePicture:Z
    iget-object v4, p0, Lcom/htc/dlnamediaserver/Settings;->mHTCMediaServerManager:Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;

    invoke-virtual {v4, v3, v1, v2}, Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;->SetMediaTypeShared(ZZZ)V

    .line 97
    invoke-virtual {p0}, Lcom/htc/dlnamediaserver/Settings;->GetConfigServer()V

    .line 98
    return-void
.end method

.method private ForceHideKeyboard()V
    .locals 3

    .prologue
    .line 301
    const v2, 0x7f070001

    invoke-virtual {p0, v2}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 302
    .local v1, theToken:Landroid/os/IBinder;
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/htc/dlnamediaserver/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 303
    .local v0, theImm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 304
    return-void
.end method

.method private ForceUpdate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/dlnamediaserver/Settings;->mServiceCommunication:Lcom/htc/dlnamediaserver/ServiceCommunication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnamediaserver/Settings;->mServiceCommunication:Lcom/htc/dlnamediaserver/ServiceCommunication;

    invoke-interface {v0}, Lcom/htc/dlnamediaserver/ServiceCommunication;->IsRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    :cond_0
    const v0, 0x7f050014

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/Settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/htc/dlnamediaserver/Settings;->Update()V

    goto :goto_0
.end method

.method private SetButtonState(Lcom/htc/dlnamediaserver/Settings$ButtonState;)V
    .locals 6
    .parameter "theState"

    .prologue
    const v5, -0x777778

    const/high16 v4, -0x100

    const v3, 0x7f070005

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 310
    iget-object v0, p0, Lcom/htc/dlnamediaserver/Settings;->mCurrentButtonState:Lcom/htc/dlnamediaserver/Settings$ButtonState;

    if-ne v0, p1, :cond_0

    .line 360
    :goto_0
    return-void

    .line 313
    :cond_0
    sget-object v0, Lcom/htc/dlnamediaserver/Settings$ButtonState;->SERVERON:Lcom/htc/dlnamediaserver/Settings$ButtonState;

    if-ne p1, v0, :cond_2

    .line 315
    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 316
    const v0, 0x7f07000e

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 317
    const v0, 0x7f07000e

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 319
    const v0, 0x7f070008

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 320
    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 321
    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 323
    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 324
    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 325
    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 327
    invoke-virtual {p0, v3}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 328
    invoke-virtual {p0, v3}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 329
    invoke-virtual {p0, v3}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 330
    invoke-virtual {p0, v3}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setTextColor(I)V

    .line 331
    invoke-virtual {p0}, Lcom/htc/dlnamediaserver/Settings;->StopLoadingPopup()V

    .line 332
    invoke-direct {p0}, Lcom/htc/dlnamediaserver/Settings;->ForceHideKeyboard()V

    .line 359
    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/htc/dlnamediaserver/Settings;->mCurrentButtonState:Lcom/htc/dlnamediaserver/Settings$ButtonState;

    goto/16 :goto_0

    .line 334
    :cond_2
    sget-object v0, Lcom/htc/dlnamediaserver/Settings$ButtonState;->SERVEROFF:Lcom/htc/dlnamediaserver/Settings$ButtonState;

    if-ne p1, v0, :cond_3

    .line 336
    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 337
    const v0, 0x7f07000e

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 338
    const v0, 0x7f07000e

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 340
    const v0, 0x7f070008

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 341
    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 342
    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 344
    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 345
    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 346
    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 348
    invoke-virtual {p0, v3}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 349
    invoke-virtual {p0, v3}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 350
    invoke-virtual {p0, v3}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 351
    invoke-virtual {p0, v3}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 352
    invoke-virtual {p0}, Lcom/htc/dlnamediaserver/Settings;->StopLoadingPopup()V

    goto/16 :goto_1

    .line 354
    :cond_3
    sget-object v0, Lcom/htc/dlnamediaserver/Settings$ButtonState;->UPDATING:Lcom/htc/dlnamediaserver/Settings$ButtonState;

    if-ne p1, v0, :cond_1

    .line 356
    const v0, 0x7f050018

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/Settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/Settings;->StartLoadingPopup(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private ShareFolder()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/dlnamediaserver/Settings;->mShareFolder:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/dlnamediaserver/ShareFolder;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/htc/dlnamediaserver/Settings;->mShareFolder:Landroid/content/Intent;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamediaserver/Settings;->mShareFolder:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/Settings;->startActivity(Landroid/content/Intent;)V

    .line 56
    return-void
.end method

.method private Start()V
    .locals 4

    .prologue
    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnamediaserver/Settings;->mServiceCommunication:Lcom/htc/dlnamediaserver/ServiceCommunication;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/htc/dlnamediaserver/Settings;->mServiceCommunication:Lcom/htc/dlnamediaserver/ServiceCommunication;

    invoke-interface {v1}, Lcom/htc/dlnamediaserver/ServiceCommunication;->IsRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/htc/dlnamediaserver/Settings;->ConfigServer()V

    .line 68
    iget-object v1, p0, Lcom/htc/dlnamediaserver/Settings;->mService:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/htc/dlnamediaserver/Settings;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_1
    iget-object v1, p0, Lcom/htc/dlnamediaserver/Settings;->mService:Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/dlnamediaserver/Settings;->mServiceConnection:Lcom/htc/dlnamediaserver/Settings$RemoteServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/dlnamediaserver/Settings;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 71
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private Stop()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/dlnamediaserver/Settings;->mService:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/Settings;->stopService(Landroid/content/Intent;)Z

    .line 82
    return-void
.end method

.method private UpdateStatus()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/dlnamediaserver/Settings;->mServiceCommunication:Lcom/htc/dlnamediaserver/ServiceCommunication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnamediaserver/Settings;->mServiceCommunication:Lcom/htc/dlnamediaserver/ServiceCommunication;

    invoke-interface {v0}, Lcom/htc/dlnamediaserver/ServiceCommunication;->IsRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    :cond_0
    sget-object v0, Lcom/htc/dlnamediaserver/Settings$ButtonState;->SERVEROFF:Lcom/htc/dlnamediaserver/Settings$ButtonState;

    invoke-direct {p0, v0}, Lcom/htc/dlnamediaserver/Settings;->SetButtonState(Lcom/htc/dlnamediaserver/Settings$ButtonState;)V

    .line 149
    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnamediaserver/Settings;->mServiceCommunication:Lcom/htc/dlnamediaserver/ServiceCommunication;

    invoke-interface {v0}, Lcom/htc/dlnamediaserver/ServiceCommunication;->IsUpdating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    sget-object v0, Lcom/htc/dlnamediaserver/Settings$ButtonState;->UPDATING:Lcom/htc/dlnamediaserver/Settings$ButtonState;

    invoke-direct {p0, v0}, Lcom/htc/dlnamediaserver/Settings;->SetButtonState(Lcom/htc/dlnamediaserver/Settings$ButtonState;)V

    .line 157
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 155
    :cond_2
    sget-object v0, Lcom/htc/dlnamediaserver/Settings$ButtonState;->SERVERON:Lcom/htc/dlnamediaserver/Settings$ButtonState;

    invoke-direct {p0, v0}, Lcom/htc/dlnamediaserver/Settings;->SetButtonState(Lcom/htc/dlnamediaserver/Settings$ButtonState;)V

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/htc/dlnamediaserver/Settings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/dlnamediaserver/Settings;->ShareFolder()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/dlnamediaserver/Settings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/dlnamediaserver/Settings;->Start()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/dlnamediaserver/Settings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/dlnamediaserver/Settings;->Stop()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/dlnamediaserver/Settings;)Lcom/htc/dlnamediaserver/ServiceCommunication;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/dlnamediaserver/Settings;->mServiceCommunication:Lcom/htc/dlnamediaserver/ServiceCommunication;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/dlnamediaserver/Settings;Lcom/htc/dlnamediaserver/ServiceCommunication;)Lcom/htc/dlnamediaserver/ServiceCommunication;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/htc/dlnamediaserver/Settings;->mServiceCommunication:Lcom/htc/dlnamediaserver/ServiceCommunication;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/dlnamediaserver/Settings;)Z
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/dlnamediaserver/Settings;->UpdateStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/htc/dlnamediaserver/Settings;Lcom/htc/dlnamediaserver/Settings$ButtonState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/htc/dlnamediaserver/Settings;->SetButtonState(Lcom/htc/dlnamediaserver/Settings$ButtonState;)V

    return-void
.end method


# virtual methods
.method public GetConfigServer()V
    .locals 3

    .prologue
    .line 104
    iget-object v1, p0, Lcom/htc/dlnamediaserver/Settings;->mHTCMediaServerManager:Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;

    invoke-virtual {v1}, Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;->GetFriendlyName()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, theFriendlyName:Ljava/lang/String;
    const v1, 0x7f070005

    invoke-virtual {p0, v1}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const v1, 0x7f070008

    invoke-virtual {p0, v1}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/htc/dlnamediaserver/Settings;->mHTCMediaServerManager:Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;

    invoke-virtual {v2}, Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;->IsMusicShareEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 108
    const v1, 0x7f07000a

    invoke-virtual {p0, v1}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/htc/dlnamediaserver/Settings;->mHTCMediaServerManager:Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;

    invoke-virtual {v2}, Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;->IsPictureShareEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 109
    const v1, 0x7f07000c

    invoke-virtual {p0, v1}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/htc/dlnamediaserver/Settings;->mHTCMediaServerManager:Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;

    invoke-virtual {v2}, Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;->IsVideoShareEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 110
    return-void
.end method

.method protected declared-synchronized StartLoadingPopup(Ljava/lang/String;)V
    .locals 2
    .parameter "aMsg"

    .prologue
    .line 288
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamediaserver/Settings;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/dlnamediaserver/Settings;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 291
    iget-object v0, p0, Lcom/htc/dlnamediaserver/Settings;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lcom/htc/dlnamediaserver/Settings;->mLoadingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 293
    iget-object v0, p0, Lcom/htc/dlnamediaserver/Settings;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :cond_0
    monitor-exit p0

    return-void

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized StopLoadingPopup()V
    .locals 1

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamediaserver/Settings;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/htc/dlnamediaserver/Settings;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dlnamediaserver/Settings;->mLoadingDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    :cond_0
    monitor-exit p0

    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public Update()V
    .locals 2

    .prologue
    .line 129
    iget-object v1, p0, Lcom/htc/dlnamediaserver/Settings;->mServiceCommunication:Lcom/htc/dlnamediaserver/ServiceCommunication;

    if-nez v1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 132
    :cond_0
    sget-object v1, Lcom/htc/dlnamediaserver/Settings$ButtonState;->UPDATING:Lcom/htc/dlnamediaserver/Settings$ButtonState;

    invoke-direct {p0, v1}, Lcom/htc/dlnamediaserver/Settings;->SetButtonState(Lcom/htc/dlnamediaserver/Settings$ButtonState;)V

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnamediaserver/Settings;->mServiceCommunication:Lcom/htc/dlnamediaserver/ServiceCommunication;

    invoke-interface {v1}, Lcom/htc/dlnamediaserver/ServiceCommunication;->ForceUpdate()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 137
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 163
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 164
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/htc/dlnamediaserver/Settings;->setContentView(I)V

    .line 166
    const-string v1, "jHTCMediaServerManager"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 167
    new-instance v1, Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;

    invoke-direct {v1}, Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;-><init>()V

    iput-object v1, p0, Lcom/htc/dlnamediaserver/Settings;->mHTCMediaServerManager:Lcom/awox/jHTCMediaServerManager/HTCMediaServerManager;

    .line 169
    new-instance v1, Lcom/htc/dlnamediaserver/Settings$RemoteServiceConnection;

    invoke-direct {v1, p0}, Lcom/htc/dlnamediaserver/Settings$RemoteServiceConnection;-><init>(Lcom/htc/dlnamediaserver/Settings;)V

    iput-object v1, p0, Lcom/htc/dlnamediaserver/Settings;->mServiceConnection:Lcom/htc/dlnamediaserver/Settings$RemoteServiceConnection;

    .line 170
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/htc/dlnamediaserver/Settings;->mService:Landroid/content/Intent;

    .line 171
    iget-object v1, p0, Lcom/htc/dlnamediaserver/Settings;->mService:Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/dlnamediaserver/Settings;->mServiceConnection:Lcom/htc/dlnamediaserver/Settings$RemoteServiceConnection;

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/dlnamediaserver/Settings;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 174
    new-instance v1, Lcom/htc/dlnamediaserver/Settings$ActionHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/dlnamediaserver/Settings$ActionHandler;-><init>(Lcom/htc/dlnamediaserver/Settings;Lcom/htc/dlnamediaserver/Settings$1;)V

    iput-object v1, p0, Lcom/htc/dlnamediaserver/Settings;->mActionHandler:Lcom/htc/dlnamediaserver/Settings$ActionHandler;

    .line 175
    new-instance v1, Lcom/htc/dlnamediaserver/DLNAMediaServerThread;

    iget-object v2, p0, Lcom/htc/dlnamediaserver/Settings;->mActionHandler:Lcom/htc/dlnamediaserver/Settings$ActionHandler;

    invoke-direct {v1, v2}, Lcom/htc/dlnamediaserver/DLNAMediaServerThread;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/htc/dlnamediaserver/Settings;->mServerServiceThread:Lcom/htc/dlnamediaserver/DLNAMediaServerThread;

    .line 176
    iget-object v1, p0, Lcom/htc/dlnamediaserver/Settings;->mServerServiceThread:Lcom/htc/dlnamediaserver/DLNAMediaServerThread;

    invoke-virtual {v1}, Lcom/htc/dlnamediaserver/DLNAMediaServerThread;->Start()V

    .line 178
    invoke-static {p0}, Lcom/htc/dlnamediaserver/ConnectionChangeReceiver;->RegisterConnectionChangeReceiver(Landroid/content/Context;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnamediaserver/Settings;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 179
    invoke-static {p0}, Lcom/htc/dlnamediaserver/MountChangeReceiver;->RegisterMountChangeReceiver(Landroid/content/Context;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnamediaserver/Settings;->mMountChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 181
    invoke-static {p0}, Lcom/htc/dlnamediaserver/ConnectionChangeReceiver;->IsNetworkUp(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/htc/dlnamediaserver/Settings;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    check-cast v1, Lcom/htc/dlnamediaserver/ConnectionChangeReceiver;

    invoke-virtual {v1}, Lcom/htc/dlnamediaserver/ConnectionChangeReceiver;->AlertWifiDown()V

    .line 190
    :cond_0
    const v1, 0x7f07000e

    invoke-virtual {p0, v1}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/htc/dlnamediaserver/Settings$1;

    invoke-direct {v2, p0}, Lcom/htc/dlnamediaserver/Settings$1;-><init>(Lcom/htc/dlnamediaserver/Settings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v1, 0x7f070003

    invoke-virtual {p0, v1}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    new-instance v2, Lcom/htc/dlnamediaserver/Settings$2;

    invoke-direct {v2, p0}, Lcom/htc/dlnamediaserver/Settings$2;-><init>(Lcom/htc/dlnamediaserver/Settings;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    sget-object v1, Lcom/htc/dlnamediaserver/Settings$ButtonState;->SERVEROFF:Lcom/htc/dlnamediaserver/Settings$ButtonState;

    invoke-direct {p0, v1}, Lcom/htc/dlnamediaserver/Settings;->SetButtonState(Lcom/htc/dlnamediaserver/Settings$ButtonState;)V

    .line 215
    invoke-virtual {p0}, Lcom/htc/dlnamediaserver/Settings;->GetConfigServer()V

    .line 218
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 219
    .local v0, FilterArray:[Landroid/text/InputFilter;
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v3

    .line 220
    const v1, 0x7f070005

    invoke-virtual {p0, v1}, Lcom/htc/dlnamediaserver/Settings;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 221
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/htc/dlnamediaserver/Settings;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 369
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 370
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 227
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 228
    iget-object v0, p0, Lcom/htc/dlnamediaserver/Settings;->mServiceConnection:Lcom/htc/dlnamediaserver/Settings$RemoteServiceConnection;

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/Settings;->unbindService(Landroid/content/ServiceConnection;)V

    .line 229
    iget-object v0, p0, Lcom/htc/dlnamediaserver/Settings;->mServerServiceThread:Lcom/htc/dlnamediaserver/DLNAMediaServerThread;

    invoke-virtual {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerThread;->Stop()V

    .line 230
    iget-object v0, p0, Lcom/htc/dlnamediaserver/Settings;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lcom/htc/dlnamediaserver/ConnectionChangeReceiver;->UnregisterConnectionChangeReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 231
    iget-object v0, p0, Lcom/htc/dlnamediaserver/Settings;->mMountChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lcom/htc/dlnamediaserver/MountChangeReceiver;->UnregisterMountChangeReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 232
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 377
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 386
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 381
    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/htc/dlnamediaserver/Settings;->ForceUpdate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x7f070015
        :pswitch_0
    .end packed-switch
.end method
