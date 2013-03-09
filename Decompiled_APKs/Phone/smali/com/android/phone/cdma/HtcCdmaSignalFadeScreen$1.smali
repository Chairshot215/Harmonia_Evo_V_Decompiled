.class Lcom/android/phone/cdma/HtcCdmaSignalFadeScreen$1;
.super Ljava/lang/Object;
.source "HtcCdmaSignalFadeScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/cdma/HtcCdmaSignalFadeScreen;->callback_createDialog(Landroid/content/Context;ILandroid/content/Intent;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/cdma/HtcCdmaSignalFadeScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/cdma/HtcCdmaSignalFadeScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/phone/cdma/HtcCdmaSignalFadeScreen$1;->this$0:Lcom/android/phone/cdma/HtcCdmaSignalFadeScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/cdma/HtcCdmaSignalFadeScreen$1;->this$0:Lcom/android/phone/cdma/HtcCdmaSignalFadeScreen;

    invoke-virtual {v0}, Lcom/android/phone/cdma/HtcCdmaSignalFadeScreen;->finish()V

    .line 43
    return-void
.end method
