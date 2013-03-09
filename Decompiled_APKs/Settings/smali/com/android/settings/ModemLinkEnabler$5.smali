.class Lcom/android/settings/ModemLinkEnabler$5;
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
    .line 544
    iput-object p1, p0, Lcom/android/settings/ModemLinkEnabler$5;->this$0:Lcom/android/settings/ModemLinkEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 546
    sget-object v0, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 547
    return-void
.end method
