.class Lcom/android/phone/HtcCdmaDataRoamGuardV3$2;
.super Ljava/lang/Object;
.source "HtcCdmaDataRoamGuardV3.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HtcCdmaDataRoamGuardV3;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaDataRoamGuardV3;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaDataRoamGuardV3;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/phone/HtcCdmaDataRoamGuardV3$2;->this$0:Lcom/android/phone/HtcCdmaDataRoamGuardV3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/phone/HtcCdmaDataRoamGuardV3$2;->this$0:Lcom/android/phone/HtcCdmaDataRoamGuardV3;

    #getter for: Lcom/android/phone/HtcCdmaDataRoamGuardV3;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/HtcCdmaDataRoamGuardV3;->access$000(Lcom/android/phone/HtcCdmaDataRoamGuardV3;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/phone/Settings;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 69
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/android/phone/HtcCdmaDataRoamGuardV3$2;->this$0:Lcom/android/phone/HtcCdmaDataRoamGuardV3;

    #getter for: Lcom/android/phone/HtcCdmaDataRoamGuardV3;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/HtcCdmaDataRoamGuardV3;->access$000(Lcom/android/phone/HtcCdmaDataRoamGuardV3;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 71
    return-void
.end method
