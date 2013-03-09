.class Lcom/android/packageinstaller/UninstallAppProgress$2;
.super Ljava/lang/Object;
.source "UninstallAppProgress.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/UninstallAppProgress;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/UninstallAppProgress;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/UninstallAppProgress;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/packageinstaller/UninstallAppProgress$2;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 139
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 140
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$DeviceAdminSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const/high16 v1, 0x5000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lcom/android/packageinstaller/UninstallAppProgress$2;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-virtual {v1, v0}, Lcom/android/packageinstaller/UninstallAppProgress;->startActivity(Landroid/content/Intent;)V

    .line 144
    iget-object v1, p0, Lcom/android/packageinstaller/UninstallAppProgress$2;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-virtual {v1}, Lcom/android/packageinstaller/UninstallAppProgress;->finish()V

    .line 145
    return-void
.end method
