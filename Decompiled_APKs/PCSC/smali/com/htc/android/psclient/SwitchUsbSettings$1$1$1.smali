.class Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;
.super Ljava/lang/Object;
.source "SwitchUsbSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;


# direct methods
.method constructor <init>(Lcom/htc/android/psclient/SwitchUsbSettings$1$1;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x2

    .line 268
    sget-boolean v0, Lcom/htc/android/psclient/PSCommon;->isChargeOrDiskSelected:Z

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$700(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Charge Only"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$100(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings;->prefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v3, v0, v1, v2}, Lcom/htc/android/psclient/PSCommon;->enableChargeOnly(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$700(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disk Drive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$100(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings;->prefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v3, v0, v1, v2}, Lcom/htc/android/psclient/PSCommon;->enableDiskDrive(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 309
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    invoke-virtual {v0}, Lcom/htc/android/psclient/SwitchUsbSettings;->finish()V

    .line 310
    :goto_1
    return-void

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->button_id:I
    invoke-static {v0}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$1000(Lcom/htc/android/psclient/SwitchUsbSettings;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->itemlist:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$200(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 278
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v1, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->itemlist:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$200(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->button_id:I
    invoke-static {v2}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$1000(Lcom/htc/android/psclient/SwitchUsbSettings;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #setter for: Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$702(Lcom/htc/android/psclient/SwitchUsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$700(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->map:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$300(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "HTC Sync"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$100(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings;->prefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v3, v0, v1, v2}, Lcom/htc/android/psclient/PSCommon;->enableHtcSync(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$700(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->map:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$300(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Internet Sharing"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 289
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/htc/android/psclient/PSCommon;->isHotspotEnabled(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 290
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$100(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings;->prefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v3, v0, v1, v2}, Lcom/htc/android/psclient/PSCommon;->enableInternetSharing(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 294
    :cond_4
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$700(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->map:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$300(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Modem link"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 296
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/htc/android/psclient/PSCommon;->isHotspotEnabled(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 297
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$100(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings;->prefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v3, v0, v1, v2}, Lcom/htc/android/psclient/PSCommon;->enableModemLink(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 301
    :cond_5
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$700(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->map:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$300(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Media Sync"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 302
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$100(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings;->prefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v3, v0, v1, v2}, Lcom/htc/android/psclient/PSCommon;->enableMediaSync(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 305
    :cond_6
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$700(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->map:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$300(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Internet Pass Through"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$100(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v1, v1, Lcom/htc/android/psclient/SwitchUsbSettings;->prefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;->this$2:Lcom/htc/android/psclient/SwitchUsbSettings$1$1;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v2, v2, Lcom/htc/android/psclient/SwitchUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v3, v0, v1, v2}, Lcom/htc/android/psclient/PSCommon;->enableInternetPassThrough(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    goto/16 :goto_0

    .line 280
    :cond_7
    invoke-static {}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Button id >= itemlist size."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
