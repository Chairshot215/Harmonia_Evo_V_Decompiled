.class Lcom/htc/android/worldclock/OffAlarmAlert$1;
.super Ljava/lang/Object;
.source "OffAlarmAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/OffAlarmAlert;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/OffAlarmAlert;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/OffAlarmAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/android/worldclock/OffAlarmAlert$1;->this$0:Lcom/htc/android/worldclock/OffAlarmAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 60
    packed-switch p2, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 63
    :pswitch_0
    const/4 v0, 0x0

    .line 65
    .local v0, bFastboot:Z
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/worldclock/OffAlarmAlert$1;->this$0:Lcom/htc/android/worldclock/OffAlarmAlert;

    invoke-virtual {v4}, Lcom/htc/android/worldclock/OffAlarmAlert;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_fastboot"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lez v4, :cond_0

    const/4 v0, 0x1

    .line 69
    :goto_1
    if-eqz v0, :cond_1

    .line 72
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v2, intent:Landroid/content/Intent;
    :goto_2
    const-string v4, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 78
    iget-object v3, p0, Lcom/htc/android/worldclock/OffAlarmAlert$1;->this$0:Lcom/htc/android/worldclock/OffAlarmAlert;

    invoke-virtual {v3, v2}, Lcom/htc/android/worldclock/OffAlarmAlert;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    move v0, v3

    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_1

    .line 74
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_2

    .line 82
    .end local v0           #bFastboot:Z
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/htc/android/worldclock/OffAlarmAlert$1$1;

    invoke-direct {v4, p0}, Lcom/htc/android/worldclock/OffAlarmAlert$1$1;-><init>(Lcom/htc/android/worldclock/OffAlarmAlert$1;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 91
    :pswitch_2
    iget-object v3, p0, Lcom/htc/android/worldclock/OffAlarmAlert$1;->this$0:Lcom/htc/android/worldclock/OffAlarmAlert;

    invoke-virtual {v3}, Lcom/htc/android/worldclock/OffAlarmAlert;->finish()V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
