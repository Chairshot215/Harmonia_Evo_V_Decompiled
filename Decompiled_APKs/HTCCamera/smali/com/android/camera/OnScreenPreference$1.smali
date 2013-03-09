.class Lcom/android/camera/OnScreenPreference$1;
.super Ljava/lang/Object;
.source "OnScreenPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/OnScreenPreference;->show_gps_dialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/OnScreenPreference;


# direct methods
.method constructor <init>(Lcom/android/camera/OnScreenPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/OnScreenPreference$1;->this$0:Lcom/android/camera/OnScreenPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$1;->this$0:Lcom/android/camera/OnScreenPreference;

    #setter for: Lcom/android/camera/OnScreenPreference;->isCheckGPS_Setting:Z
    invoke-static {v1, v2}, Lcom/android/camera/OnScreenPreference;->access$002(Lcom/android/camera/OnScreenPreference;Z)Z

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$1;->this$0:Lcom/android/camera/OnScreenPreference;

    #getter for: Lcom/android/camera/OnScreenPreference;->mGeoTaggingPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/camera/OnScreenPreference;->access$100(Lcom/android/camera/OnScreenPreference;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$1;->this$0:Lcom/android/camera/OnScreenPreference;

    #getter for: Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v1}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
