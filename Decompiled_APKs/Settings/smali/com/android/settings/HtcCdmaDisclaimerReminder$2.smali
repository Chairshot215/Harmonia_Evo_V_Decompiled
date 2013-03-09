.class Lcom/android/settings/HtcCdmaDisclaimerReminder$2;
.super Ljava/lang/Object;
.source "HtcCdmaDisclaimerReminder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/HtcCdmaDisclaimerReminder;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HtcCdmaDisclaimerReminder;


# direct methods
.method constructor <init>(Lcom/android/settings/HtcCdmaDisclaimerReminder;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings/HtcCdmaDisclaimerReminder$2;->this$0:Lcom/android/settings/HtcCdmaDisclaimerReminder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/HtcCdmaDisclaimerReminder$2;->this$0:Lcom/android/settings/HtcCdmaDisclaimerReminder;

    invoke-virtual {v0}, Lcom/android/settings/HtcCdmaDisclaimerReminder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 54
    iget-object v0, p0, Lcom/android/settings/HtcCdmaDisclaimerReminder$2;->this$0:Lcom/android/settings/HtcCdmaDisclaimerReminder;

    invoke-virtual {v0}, Lcom/android/settings/HtcCdmaDisclaimerReminder;->finish()V

    .line 55
    return-void
.end method
