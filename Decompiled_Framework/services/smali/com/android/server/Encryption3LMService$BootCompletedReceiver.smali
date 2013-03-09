.class final Lcom/android/server/Encryption3LMService$BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Encryption3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Encryption3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BootCompletedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/Encryption3LMService;


# direct methods
.method private constructor <init>(Lcom/android/server/Encryption3LMService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/Encryption3LMService$BootCompletedReceiver;->this$0:Lcom/android/server/Encryption3LMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/Encryption3LMService;Lcom/android/server/Encryption3LMService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/Encryption3LMService$BootCompletedReceiver;-><init>(Lcom/android/server/Encryption3LMService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    sget-object v2, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    if-eq v1, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APP_ENCRYPT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
