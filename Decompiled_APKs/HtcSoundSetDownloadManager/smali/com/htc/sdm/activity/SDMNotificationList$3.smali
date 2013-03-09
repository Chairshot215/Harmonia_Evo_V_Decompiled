.class Lcom/htc/sdm/activity/SDMNotificationList$3;
.super Ljava/lang/Object;
.source "SDMNotificationList.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sdm/activity/SDMNotificationList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdm/activity/SDMNotificationList;


# direct methods
.method constructor <init>(Lcom/htc/sdm/activity/SDMNotificationList;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/htc/sdm/activity/SDMNotificationList$3;->this$0:Lcom/htc/sdm/activity/SDMNotificationList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 84
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 85
    .local v1, myIntent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v0, myBundle:Landroid/os/Bundle;
    const-string v2, "SDMPickerType"

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    const-string v2, "SDMSaveOrNot"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 89
    const-string v2, "com.htc.sdm"

    const-string v3, "com.htc.sdm.activity.SoundPicker"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    iget-object v2, p0, Lcom/htc/sdm/activity/SDMNotificationList$3;->this$0:Lcom/htc/sdm/activity/SDMNotificationList;

    invoke-virtual {v2, v1}, Lcom/htc/sdm/activity/SDMNotificationList;->startActivity(Landroid/content/Intent;)V

    .line 91
    return v4
.end method
