.class Lcom/android/settings/NetSharingEnabler$8;
.super Ljava/lang/Object;
.source "NetSharingEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NetSharingEnabler;->popAPNList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NetSharingEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/NetSharingEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 1264
    iput-object p1, p0, Lcom/android/settings/NetSharingEnabler$8;->this$0:Lcom/android/settings/NetSharingEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler$8;->this$0:Lcom/android/settings/NetSharingEnabler;

    #calls: Lcom/android/settings/NetSharingEnabler;->setSelectedDunId(I)V
    invoke-static {v0, p2}, Lcom/android/settings/NetSharingEnabler;->access$400(Lcom/android/settings/NetSharingEnabler;I)V

    .line 1274
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler$8;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    const v1, 0x7f0c030f

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 1275
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler$8;->this$0:Lcom/android/settings/NetSharingEnabler;

    const/4 v1, 0x1

    #calls: Lcom/android/settings/NetSharingEnabler;->toggleISState(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/NetSharingEnabler;->access$500(Lcom/android/settings/NetSharingEnabler;Z)V

    .line 1276
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_TYPE:Z

    if-eqz v0, :cond_0

    .line 1277
    sget-object v0, Lcom/android/settings/NetSharingTypeEnabler;->mToggleISType:Lcom/htc/preference/HtcPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 1278
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1279
    return-void
.end method
