.class Lcom/android/settings/ModemLinkEnabler$6;
.super Ljava/lang/Object;
.source "ModemLinkEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ModemLinkEnabler;->HotspotWarningDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ModemLinkEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/ModemLinkEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 534
    iput-object p1, p0, Lcom/android/settings/ModemLinkEnabler$6;->this$0:Lcom/android/settings/ModemLinkEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 536
    sput-boolean v3, Lcom/android/settings/ModemLinkEnabler;->opening:Z

    .line 537
    sget-object v0, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 538
    sget-object v0, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    const v1, 0x7f0c030f

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 539
    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ModemLinkTypeEnabler;->Get_Connection_Type(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/ModemLinkEnabler;->setMLInterface(I)V

    .line 540
    iget-object v0, p0, Lcom/android/settings/ModemLinkEnabler$6;->this$0:Lcom/android/settings/ModemLinkEnabler;

    #calls: Lcom/android/settings/ModemLinkEnabler;->toggleMLState(Z)V
    invoke-static {v0, v3}, Lcom/android/settings/ModemLinkEnabler;->access$200(Lcom/android/settings/ModemLinkEnabler;Z)V

    .line 541
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_ML_TYPE:Z

    if-eqz v0, :cond_0

    .line 542
    sget-object v0, Lcom/android/settings/ModemLinkTypeEnabler;->mToggleMLType:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 543
    :cond_0
    return-void
.end method
