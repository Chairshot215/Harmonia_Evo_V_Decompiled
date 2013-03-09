.class Lcom/android/phone/cdma/HtcCdmaUnknownMccScreen$1;
.super Ljava/lang/Object;
.source "HtcCdmaUnknownMccScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/cdma/HtcCdmaUnknownMccScreen;->callback_createDialog(Landroid/content/Context;ILandroid/content/Intent;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/cdma/HtcCdmaUnknownMccScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/cdma/HtcCdmaUnknownMccScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/phone/cdma/HtcCdmaUnknownMccScreen$1;->this$0:Lcom/android/phone/cdma/HtcCdmaUnknownMccScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.nbpcd.NBPCDSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 42
    iget-object v1, p0, Lcom/android/phone/cdma/HtcCdmaUnknownMccScreen$1;->this$0:Lcom/android/phone/cdma/HtcCdmaUnknownMccScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/cdma/HtcCdmaUnknownMccScreen;->startActivity(Landroid/content/Intent;)V

    .line 43
    iget-object v1, p0, Lcom/android/phone/cdma/HtcCdmaUnknownMccScreen$1;->this$0:Lcom/android/phone/cdma/HtcCdmaUnknownMccScreen;

    invoke-virtual {v1}, Lcom/android/phone/cdma/HtcCdmaUnknownMccScreen;->finish()V

    .line 44
    return-void
.end method
