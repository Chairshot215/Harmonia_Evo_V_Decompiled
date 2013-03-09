.class public Lcom/futuredial/ui/DMIUI;
.super Landroid/app/Activity;
.source "DMIUI.java"


# static fields
.field static DMIsrv:Lcom/futuredial/service/DMISrvInterface; = null

.field static final INTENT_ARG_START_TYPE:Ljava/lang/String; = "com.futuredial.TransferData.StartType"

.field static final LV_LAYOUT_ID:Ljava/lang/Integer;

.field static final START_TYPE_OOBE:Ljava/lang/Integer;

.field static final START_TYPE_UNKNOWN:Ljava/lang/Integer;

.field static m_serviceIntent:Landroid/content/Intent;

.field static m_srvConn:Landroid/content/ServiceConnection;


# instance fields
.field TAG:Ljava/lang/String;

.field public m_bFromOOBE:Z

.field m_cfgChg:Ljava/lang/Boolean;

.field m_curCtrl:Lcom/futuredial/ui/ViewController;

.field m_diagMan:Lcom/futuredial/ui/DialogManager;

.field m_gHandler:Lcom/futuredial/ui/UIHandler;

.field m_innerMem:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m_this:Lcom/futuredial/ui/DMIUI;

.field m_timer:Ljava/util/Timer;

.field m_toast:Landroid/widget/Toast;

.field m_vib:Landroid/os/Vibrator;

.field m_wakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    sput-object v0, Lcom/futuredial/ui/DMIUI;->m_serviceIntent:Landroid/content/Intent;

    .line 51
    sput-object v0, Lcom/futuredial/ui/DMIUI;->DMIsrv:Lcom/futuredial/service/DMISrvInterface;

    .line 52
    sput-object v0, Lcom/futuredial/ui/DMIUI;->m_srvConn:Landroid/content/ServiceConnection;

    .line 55
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/futuredial/ui/DMIUI;->START_TYPE_UNKNOWN:Ljava/lang/Integer;

    .line 56
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/futuredial/ui/DMIUI;->START_TYPE_OOBE:Ljava/lang/Integer;

    .line 58
    const v0, 0x20900af

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/futuredial/ui/DMIUI;->LV_LAYOUT_ID:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const-string v0, "DMI"

    iput-object v0, p0, Lcom/futuredial/ui/DMIUI;->TAG:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/futuredial/ui/DMIUI;->m_curCtrl:Lcom/futuredial/ui/ViewController;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ui/DMIUI;->m_innerMem:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/futuredial/ui/DMIUI;->m_cfgChg:Ljava/lang/Boolean;

    .line 48
    new-instance v0, Lcom/futuredial/ui/UIHandler;

    invoke-direct {v0}, Lcom/futuredial/ui/UIHandler;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ui/DMIUI;->m_gHandler:Lcom/futuredial/ui/UIHandler;

    .line 62
    iput-object v2, p0, Lcom/futuredial/ui/DMIUI;->m_wakelock:Landroid/os/PowerManager$WakeLock;

    .line 64
    new-instance v0, Lcom/futuredial/ui/DialogManager;

    invoke-direct {v0}, Lcom/futuredial/ui/DialogManager;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    .line 66
    iput-object v2, p0, Lcom/futuredial/ui/DMIUI;->m_vib:Landroid/os/Vibrator;

    .line 67
    iput-object v2, p0, Lcom/futuredial/ui/DMIUI;->m_toast:Landroid/widget/Toast;

    .line 68
    iput-object v2, p0, Lcom/futuredial/ui/DMIUI;->m_timer:Ljava/util/Timer;

    .line 70
    iput-object v2, p0, Lcom/futuredial/ui/DMIUI;->m_this:Lcom/futuredial/ui/DMIUI;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/futuredial/ui/DMIUI;->m_bFromOOBE:Z

    return-void
.end method


# virtual methods
.method clear_dump()V
    .locals 8

    .prologue
    .line 191
    :try_start_0
    invoke-virtual {p0}, Lcom/futuredial/ui/DMIUI;->fileList()[Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, filelist:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 194
    aget-object v2, v1, v3

    .line 195
    .local v2, filename:Ljava/lang/String;
    const-string v4, "fditem_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 197
    iget-object v4, p0, Lcom/futuredial/ui/DMIUI;->TAG:Ljava/lang/String;

    const-string v5, "unexpected file :%s -> delete"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0, v2}, Lcom/futuredial/ui/DMIUI;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    .line 199
    .local v0, bDeleted:Z
    if-nez v0, :cond_0

    .line 200
    iget-object v4, p0, Lcom/futuredial/ui/DMIUI;->TAG:Ljava/lang/String;

    const-string v5, "unexpected file :%s -> delete failed!"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v0           #bDeleted:Z
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 204
    .end local v1           #filelist:[Ljava/lang/String;
    .end local v2           #filename:Ljava/lang/String;
    .end local v3           #i:I
    :catch_0
    move-exception v4

    .line 206
    :cond_1
    return-void
.end method

.method dmi_notify(Ljava/lang/String;I)V
    .locals 6
    .parameter "s"
    .parameter "vt"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/futuredial/ui/DMIUI;->m_vib:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/futuredial/ui/DMIUI;->m_vib:Landroid/os/Vibrator;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 281
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/ui/DMIUI;->m_toast:Landroid/widget/Toast;

    .line 282
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ui/DMIUI;->m_timer:Ljava/util/Timer;

    .line 283
    iget-object v0, p0, Lcom/futuredial/ui/DMIUI;->m_timer:Ljava/util/Timer;

    new-instance v1, Lcom/futuredial/ui/DMIUI$2;

    invoke-direct {v1, p0}, Lcom/futuredial/ui/DMIUI$2;-><init>(Lcom/futuredial/ui/DMIUI;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xbb8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 289
    return-void
.end method

.method dmi_notify_close()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/futuredial/ui/DMIUI;->m_toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/futuredial/ui/DMIUI;->m_toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/futuredial/ui/DMIUI;->m_timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/futuredial/ui/DMIUI;->m_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 297
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/futuredial/ui/DMIUI;->TAG:Ljava/lang/String;

    const-string v1, "[Back] pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/futuredial/ui/DMIUI;->m_curCtrl:Lcom/futuredial/ui/ViewController;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/futuredial/ui/DMIUI;->m_curCtrl:Lcom/futuredial/ui/ViewController;

    invoke-virtual {v0}, Lcom/futuredial/ui/ViewController;->on_back_key()V

    .line 212
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/futuredial/ui/DMIUI;->TAG:Ljava/lang/String;

    const-string v1, "config changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 234
    iget-object v0, p0, Lcom/futuredial/ui/DMIUI;->m_curCtrl:Lcom/futuredial/ui/ViewController;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/futuredial/ui/DMIUI;->m_curCtrl:Lcom/futuredial/ui/ViewController;

    invoke-virtual {v0}, Lcom/futuredial/ui/ViewController;->op_for_config_change()V

    .line 236
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 76
    iget-object v2, p0, Lcom/futuredial/ui/DMIUI;->TAG:Ljava/lang/String;

    const-string v3, "on Create"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/futuredial/ui/DMIUI;->m_this:Lcom/futuredial/ui/DMIUI;

    .line 78
    invoke-virtual {p0, v4}, Lcom/futuredial/ui/DMIUI;->requestWindowFeature(I)Z

    .line 80
    invoke-virtual {p0}, Lcom/futuredial/ui/DMIUI;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 81
    .local v0, data:Ljava/lang/Object;
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/futuredial/ui/DMIUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 82
    .local v1, pm:Landroid/os/PowerManager;
    const v2, 0x2000000a

    const-string v3, "DMI"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/futuredial/ui/DMIUI;->m_wakelock:Landroid/os/PowerManager$WakeLock;

    .line 85
    const-string v2, "vibrator"

    invoke-virtual {p0, v2}, Lcom/futuredial/ui/DMIUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/futuredial/ui/DMIUI;->m_vib:Landroid/os/Vibrator;

    .line 86
    sput-object p0, Lcom/futuredial/ui/DMIStyle;->c:Landroid/content/Context;

    .line 90
    const-string v2, "[DMI service]"

    const-string v3, "start service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/futuredial/service/DMIService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v2, Lcom/futuredial/ui/DMIUI;->m_serviceIntent:Landroid/content/Intent;

    .line 92
    sget-object v2, Lcom/futuredial/ui/DMIUI;->m_serviceIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/futuredial/ui/DMIUI;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 94
    new-instance v2, Lcom/futuredial/ui/DMIUI$1;

    invoke-direct {v2, p0, v0}, Lcom/futuredial/ui/DMIUI$1;-><init>(Lcom/futuredial/ui/DMIUI;Ljava/lang/Object;)V

    sput-object v2, Lcom/futuredial/ui/DMIUI;->m_srvConn:Landroid/content/ServiceConnection;

    .line 112
    const-string v2, "[DMI service]"

    const-string v3, "bind & connect service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v2, Lcom/futuredial/ui/DMIUI;->m_serviceIntent:Landroid/content/Intent;

    sget-object v3, Lcom/futuredial/ui/DMIUI;->m_srvConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2, v3, v4}, Lcom/futuredial/ui/DMIUI;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 114
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/futuredial/ui/DMIUI;->m_curCtrl:Lcom/futuredial/ui/ViewController;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/futuredial/ui/DMIUI;->m_curCtrl:Lcom/futuredial/ui/ViewController;

    invoke-virtual {v0, p1}, Lcom/futuredial/ui/ViewController;->op_on_create_menu(Landroid/view/Menu;)Z

    move-result v0

    .line 303
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 251
    :try_start_0
    sget-object v0, Lcom/futuredial/ui/DMIUI;->m_srvConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/futuredial/ui/DMIUI;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    iget-object v0, p0, Lcom/futuredial/ui/DMIUI;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v1, p0, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    iget-object v0, p0, Lcom/futuredial/ui/DMIUI;->m_cfgChg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/futuredial/ui/DialogManager;->dismissAll(Z)V

    .line 257
    iget-object v0, p0, Lcom/futuredial/ui/DMIUI;->m_cfgChg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/futuredial/ui/DMIUI;->TAG:Ljava/lang/String;

    const-string v1, "app finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/futuredial/ui/DMIUI;->TAG:Ljava/lang/String;

    const-string v1, "unbind and stop service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    sget-object v0, Lcom/futuredial/ui/DMIUI;->m_serviceIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/futuredial/ui/DMIUI;->stopService(Landroid/content/Intent;)Z

    .line 264
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 266
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 273
    :goto_2
    return-void

    .line 256
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/futuredial/ui/DMIUI;->TAG:Ljava/lang/String;

    const-string v1, "app still work"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    goto :goto_2

    .line 253
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/futuredial/ui/DMIUI;->m_curCtrl:Lcom/futuredial/ui/ViewController;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/futuredial/ui/DMIUI;->m_curCtrl:Lcom/futuredial/ui/ViewController;

    invoke-virtual {v0, p1}, Lcom/futuredial/ui/ViewController;->op_on_menu(Landroid/view/MenuItem;)Z

    move-result v0

    .line 318
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/futuredial/ui/DMIUI;->m_curCtrl:Lcom/futuredial/ui/ViewController;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/futuredial/ui/DMIUI;->m_curCtrl:Lcom/futuredial/ui/ViewController;

    invoke-virtual {v0, p1}, Lcom/futuredial/ui/ViewController;->op_on_prepare_menu(Landroid/view/Menu;)Z

    move-result v0

    .line 310
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/futuredial/ui/DMIUI;->TAG:Ljava/lang/String;

    const-string v1, "app resume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 242
    iget-object v0, p0, Lcom/futuredial/ui/DMIUI;->m_curCtrl:Lcom/futuredial/ui/ViewController;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/futuredial/ui/DMIUI;->m_curCtrl:Lcom/futuredial/ui/ViewController;

    invoke-virtual {v0}, Lcom/futuredial/ui/ViewController;->op_wnd_resume()V

    .line 244
    :cond_0
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 215
    iget-object v1, p0, Lcom/futuredial/ui/DMIUI;->TAG:Ljava/lang/String;

    const-string v2, "app on retain non configuraion instance"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v0, Lcom/futuredial/ui/CActivityStatus;

    invoke-direct {v0}, Lcom/futuredial/ui/CActivityStatus;-><init>()V

    .line 218
    .local v0, status:Lcom/futuredial/ui/CActivityStatus;
    iget-object v1, p0, Lcom/futuredial/ui/DMIUI;->m_curCtrl:Lcom/futuredial/ui/ViewController;

    invoke-virtual {v1}, Lcom/futuredial/ui/ViewController;->op_for_config_change()V

    .line 219
    iget-object v1, p0, Lcom/futuredial/ui/DMIUI;->m_curCtrl:Lcom/futuredial/ui/ViewController;

    iput-object v1, v0, Lcom/futuredial/ui/CActivityStatus;->curCtrl:Lcom/futuredial/ui/ViewController;

    .line 220
    iget-object v1, p0, Lcom/futuredial/ui/DMIUI;->m_innerMem:Ljava/util/HashMap;

    iput-object v1, v0, Lcom/futuredial/ui/CActivityStatus;->innerMem:Ljava/util/HashMap;

    .line 221
    iget-object v1, p0, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    iput-object v1, v0, Lcom/futuredial/ui/CActivityStatus;->dialogMan:Lcom/futuredial/ui/DialogManager;

    .line 222
    iget-object v1, p0, Lcom/futuredial/ui/DMIUI;->m_gHandler:Lcom/futuredial/ui/UIHandler;

    iput-object v1, v0, Lcom/futuredial/ui/CActivityStatus;->gHandler:Lcom/futuredial/ui/UIHandler;

    .line 223
    iget-object v1, p0, Lcom/futuredial/ui/DMIUI;->m_timer:Ljava/util/Timer;

    iput-object v1, v0, Lcom/futuredial/ui/CActivityStatus;->timer:Ljava/util/Timer;

    .line 224
    iget-object v1, p0, Lcom/futuredial/ui/DMIUI;->m_toast:Landroid/widget/Toast;

    iput-object v1, v0, Lcom/futuredial/ui/CActivityStatus;->toast:Landroid/widget/Toast;

    .line 225
    iget-object v1, p0, Lcom/futuredial/ui/DMIUI;->m_vib:Landroid/os/Vibrator;

    iput-object v1, v0, Lcom/futuredial/ui/CActivityStatus;->vib:Landroid/os/Vibrator;

    .line 226
    iget-object v1, p0, Lcom/futuredial/ui/DMIUI;->m_wakelock:Landroid/os/PowerManager$WakeLock;

    iput-object v1, v0, Lcom/futuredial/ui/CActivityStatus;->wakelock:Landroid/os/PowerManager$WakeLock;

    .line 227
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/futuredial/ui/DMIUI;->m_cfgChg:Ljava/lang/Boolean;

    .line 228
    return-object v0
.end method

.method start_activity(Ljava/lang/Object;)V
    .locals 7
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    .line 118
    iget-object v3, p0, Lcom/futuredial/ui/DMIUI;->TAG:Ljava/lang/String;

    const-string v4, "start activity"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, firstView:Lcom/futuredial/ui/ViewController;
    if-eqz p1, :cond_0

    .line 122
    iget-object v3, p0, Lcom/futuredial/ui/DMIUI;->TAG:Ljava/lang/String;

    const-string v4, "recovery saved contex"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p1

    .line 123
    check-cast v2, Lcom/futuredial/ui/CActivityStatus;

    .line 124
    .local v2, status:Lcom/futuredial/ui/CActivityStatus;
    iget-object v0, v2, Lcom/futuredial/ui/CActivityStatus;->curCtrl:Lcom/futuredial/ui/ViewController;

    .line 125
    iget-object v3, v2, Lcom/futuredial/ui/CActivityStatus;->innerMem:Ljava/util/HashMap;

    iput-object v3, p0, Lcom/futuredial/ui/DMIUI;->m_innerMem:Ljava/util/HashMap;

    .line 126
    iget-object v3, v2, Lcom/futuredial/ui/CActivityStatus;->timer:Ljava/util/Timer;

    iput-object v3, p0, Lcom/futuredial/ui/DMIUI;->m_timer:Ljava/util/Timer;

    .line 127
    iget-object v3, v2, Lcom/futuredial/ui/CActivityStatus;->vib:Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/futuredial/ui/DMIUI;->m_vib:Landroid/os/Vibrator;

    .line 128
    iget-object v3, v2, Lcom/futuredial/ui/CActivityStatus;->dialogMan:Lcom/futuredial/ui/DialogManager;

    iput-object v3, p0, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    .line 130
    iget-object v3, v2, Lcom/futuredial/ui/CActivityStatus;->toast:Landroid/widget/Toast;

    iput-object v3, p0, Lcom/futuredial/ui/DMIUI;->m_toast:Landroid/widget/Toast;

    .line 131
    iget-object v3, v2, Lcom/futuredial/ui/CActivityStatus;->wakelock:Landroid/os/PowerManager$WakeLock;

    iput-object v3, p0, Lcom/futuredial/ui/DMIUI;->m_wakelock:Landroid/os/PowerManager$WakeLock;

    .line 154
    .end local v2           #status:Lcom/futuredial/ui/CActivityStatus;
    :goto_0
    iget-object v3, p0, Lcom/futuredial/ui/DMIUI;->m_this:Lcom/futuredial/ui/DMIUI;

    iput-object v3, v0, Lcom/futuredial/ui/ViewController;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    .line 155
    invoke-virtual {v0}, Lcom/futuredial/ui/ViewController;->show()V

    .line 156
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/futuredial/ui/DMIUI;->m_cfgChg:Ljava/lang/Boolean;

    .line 158
    iput-object v0, p0, Lcom/futuredial/ui/DMIUI;->m_curCtrl:Lcom/futuredial/ui/ViewController;

    .line 159
    return-void

    .line 135
    :cond_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/futuredial/ui/DMIUI;->m_cfgChg:Ljava/lang/Boolean;

    .line 136
    iget-object v3, p0, Lcom/futuredial/ui/DMIUI;->m_this:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v3}, Lcom/futuredial/ui/DMIUI;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 137
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    sget-object v3, Lcom/futuredial/ui/DMIUI;->START_TYPE_OOBE:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "com.futuredial.TransferData.StartType"

    sget-object v5, Lcom/futuredial/ui/DMIUI;->START_TYPE_UNKNOWN:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 140
    iget-object v3, p0, Lcom/futuredial/ui/DMIUI;->TAG:Ljava/lang/String;

    const-string v4, "start from OOBE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/futuredial/ui/DMIUI;->m_bFromOOBE:Z

    .line 142
    new-instance v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;

    .end local v0           #firstView:Lcom/futuredial/ui/ViewController;
    invoke-direct {v0}, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;-><init>()V

    .line 150
    .restart local v0       #firstView:Lcom/futuredial/ui/ViewController;
    :goto_1
    invoke-virtual {p0}, Lcom/futuredial/ui/DMIUI;->write_reg()V

    .line 151
    invoke-virtual {p0}, Lcom/futuredial/ui/DMIUI;->clear_dump()V

    goto :goto_0

    .line 146
    :cond_1
    new-instance v0, Lcom/futuredial/ui/ViewImportData;

    .end local v0           #firstView:Lcom/futuredial/ui/ViewController;
    invoke-direct {v0}, Lcom/futuredial/ui/ViewImportData;-><init>()V

    .restart local v0       #firstView:Lcom/futuredial/ui/ViewController;
    goto :goto_1
.end method

.method write_reg()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 178
    const-string v3, "dmi_cfg"

    invoke-virtual {p0, v3, v5}, Lcom/futuredial/ui/DMIUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 179
    .local v1, mPrefs:Landroid/content/SharedPreferences;
    const-string v3, "run_count"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 180
    .local v2, runcount:Ljava/lang/Integer;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 181
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "run_count"

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 182
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    iget-object v3, p0, Lcom/futuredial/ui/DMIUI;->TAG:Ljava/lang/String;

    const-string v4, "%d(st/nd/rd/th) time use DMI"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method
