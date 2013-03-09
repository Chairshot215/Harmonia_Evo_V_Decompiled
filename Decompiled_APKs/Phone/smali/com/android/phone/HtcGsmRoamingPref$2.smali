.class Lcom/android/phone/HtcGsmRoamingPref$2;
.super Ljava/lang/Object;
.source "HtcGsmRoamingPref.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HtcGsmRoamingPref;->showAlertDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcGsmRoamingPref;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcGsmRoamingPref;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/phone/HtcGsmRoamingPref$2;->this$0:Lcom/android/phone/HtcGsmRoamingPref;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v0, p0, Lcom/android/phone/HtcGsmRoamingPref$2;->this$0:Lcom/android/phone/HtcGsmRoamingPref;

    #getter for: Lcom/android/phone/HtcGsmRoamingPref;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/HtcGsmRoamingPref;->access$000(Lcom/android/phone/HtcGsmRoamingPref;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 110
    iget-object v0, p0, Lcom/android/phone/HtcGsmRoamingPref$2;->this$0:Lcom/android/phone/HtcGsmRoamingPref;

    #getter for: Lcom/android/phone/HtcGsmRoamingPref;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/HtcGsmRoamingPref;->access$100(Lcom/android/phone/HtcGsmRoamingPref;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 111
    return-void
.end method
