.class Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;
.super Ljava/lang/Object;
.source "UsbConnectionSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;


# direct methods
.method constructor <init>(Lcom/htc/android/psclient/UsbConnectionSettings$1$1;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 329
    sget-boolean v0, Lcom/htc/android/psclient/PSCommon;->isChargeOrDiskSelected:Z

    if-eqz v0, :cond_2

    .line 330
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$500(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Charge Only"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$100(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings;->prefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v3, v0, v1, v2}, Lcom/htc/android/psclient/PSCommon;->enableChargeOnly(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$500(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disk Drive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$100(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings;->prefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v3, v0, v1, v2}, Lcom/htc/android/psclient/PSCommon;->enableDiskDrive(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 370
    :cond_1
    :goto_0
    sput-boolean v3, Lcom/htc/android/psclient/PSCommon;->isFunctionLaunched:Z

    .line 371
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    invoke-virtual {v0}, Lcom/htc/android/psclient/UsbConnectionSettings;->finish()V

    .line 372
    :goto_1
    return-void

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->button_id:I
    invoke-static {v0}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$1100(Lcom/htc/android/psclient/UsbConnectionSettings;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->itemlist:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$600(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 339
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v1, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->itemlist:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$600(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->button_id:I
    invoke-static {v2}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$1100(Lcom/htc/android/psclient/UsbConnectionSettings;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #setter for: Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$502(Lcom/htc/android/psclient/UsbConnectionSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$500(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->map:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$700(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "HTC Sync"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 345
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$100(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings;->prefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v3, v0, v1, v2}, Lcom/htc/android/psclient/PSCommon;->enableHtcSync(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 348
    :cond_3
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$500(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->map:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$700(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Internet Sharing"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 350
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/htc/android/psclient/PSCommon;->isHotspotEnabled(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 351
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$100(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings;->prefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v3, v0, v1, v2}, Lcom/htc/android/psclient/PSCommon;->enableInternetSharing(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 355
    :cond_4
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$500(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->map:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$700(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Modem link"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 357
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/htc/android/psclient/PSCommon;->isHotspotEnabled(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 358
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$100(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings;->prefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v3, v0, v1, v2}, Lcom/htc/android/psclient/PSCommon;->enableModemLink(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 362
    :cond_5
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$500(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->map:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$700(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Media Sync"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 363
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$100(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings;->prefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v3, v0, v1, v2}, Lcom/htc/android/psclient/PSCommon;->enableMediaSync(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 366
    :cond_6
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$500(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->map:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$700(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Internet Pass Through"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$100(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v1, v1, Lcom/htc/android/psclient/UsbConnectionSettings;->prefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/UsbConnectionSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v3, v0, v1, v2}, Lcom/htc/android/psclient/PSCommon;->enableInternetPassThrough(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    goto/16 :goto_0

    .line 341
    :cond_7
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;->this$2:Lcom/htc/android/psclient/UsbConnectionSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$000(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Button id >= itemlist size."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
