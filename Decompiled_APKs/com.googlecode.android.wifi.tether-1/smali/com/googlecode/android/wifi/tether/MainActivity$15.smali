.class Lcom/googlecode/android/wifi/tether/MainActivity$15;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/android/wifi/tether/MainActivity;->openDonateDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/android/wifi/tether/MainActivity;


# direct methods
.method constructor <init>(Lcom/googlecode/android/wifi/tether/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/MainActivity$15;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 759
    const-string v1, "TETHER -> MainActivity"

    const-string v2, "Donate pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/MainActivity$15;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    const v2, 0x7f0700df

    invoke-virtual {v1, v2}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 761
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/MainActivity$15;->this$0:Lcom/googlecode/android/wifi/tether/MainActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/googlecode/android/wifi/tether/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 762
    return-void
.end method
