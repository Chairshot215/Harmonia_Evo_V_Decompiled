.class Lcom/android/settings/MobileDataEnabler$3;
.super Ljava/lang/Object;
.source "MobileDataEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MobileDataEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MobileDataEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/MobileDataEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/settings/MobileDataEnabler$3;->this$0:Lcom/android/settings/MobileDataEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 134
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler$3;->this$0:Lcom/android/settings/MobileDataEnabler;

    #getter for: Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;
    invoke-static {v0}, Lcom/android/settings/MobileDataEnabler;->access$300(Lcom/android/settings/MobileDataEnabler;)Lcom/htc/widget/HtcToggleButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 135
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler$3;->this$0:Lcom/android/settings/MobileDataEnabler;

    #calls: Lcom/android/settings/MobileDataEnabler;->setDataRoamingEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/MobileDataEnabler;->access$500(Lcom/android/settings/MobileDataEnabler;Z)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler$3;->this$0:Lcom/android/settings/MobileDataEnabler;

    #calls: Lcom/android/settings/MobileDataEnabler;->setMobileDataEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/MobileDataEnabler;->access$400(Lcom/android/settings/MobileDataEnabler;Z)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler$3;->this$0:Lcom/android/settings/MobileDataEnabler;

    const/4 v1, 0x0

    #calls: Lcom/android/settings/MobileDataEnabler;->setMobileDataEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/MobileDataEnabler;->access$400(Lcom/android/settings/MobileDataEnabler;Z)V

    goto :goto_0
.end method
