.class Lcom/android/phone/HACSetting$MyHandler;
.super Landroid/os/Handler;
.source "HACSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HACSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_SET_HAC:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/phone/HACSetting;


# direct methods
.method private constructor <init>(Lcom/android/phone/HACSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/phone/HACSetting$MyHandler;->this$0:Lcom/android/phone/HACSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/HACSetting;Lcom/android/phone/HACSetting$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/phone/HACSetting$MyHandler;-><init>(Lcom/android/phone/HACSetting;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 30
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 33
    :pswitch_0
    iget-object v4, p0, Lcom/android/phone/HACSetting$MyHandler;->this$0:Lcom/android/phone/HACSetting;

    #getter for: Lcom/android/phone/HACSetting;->mFromPhoneApp:Z
    invoke-static {v4}, Lcom/android/phone/HACSetting;->access$100(Lcom/android/phone/HACSetting;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_1

    .line 35
    .local v1, enable:Z
    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 36
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HACSetting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_2

    const-string v4, "ON"

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, hacStatus:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 45
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #enable:Z
    .end local v2           #hacStatus:Ljava/lang/String;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.HAC_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .local v3, intent:Landroid/content/Intent;
    const/high16 v4, 0x4000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 47
    const-string v4, "enabled"

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 34
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 37
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v1       #enable:Z
    :cond_2
    const-string v4, "OFF"

    goto :goto_2

    .line 30
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
