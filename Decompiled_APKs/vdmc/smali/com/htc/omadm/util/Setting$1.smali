.class Lcom/htc/omadm/util/Setting$1;
.super Ljava/lang/Object;
.source "Setting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/util/Setting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/util/Setting;


# direct methods
.method constructor <init>(Lcom/htc/omadm/util/Setting;)V
    .locals 0
    .parameter

    .prologue
    .line 647
    iput-object p1, p0, Lcom/htc/omadm/util/Setting$1;->this$0:Lcom/htc/omadm/util/Setting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 651
    iget-object v2, p0, Lcom/htc/omadm/util/Setting$1;->this$0:Lcom/htc/omadm/util/Setting;

    #getter for: Lcom/htc/omadm/util/Setting;->mPhoneInfo:Lcom/htc/omadm/libdo/system/PhoneInfo;
    invoke-static {v2}, Lcom/htc/omadm/util/Setting;->access$000(Lcom/htc/omadm/util/Setting;)Lcom/htc/omadm/libdo/system/PhoneInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/omadm/libdo/system/PhoneInfo;->Device_ID()Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, Device_ID:Ljava/lang/String;
    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/htc/omadm/util/Setting;->access$100()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 656
    iget-object v2, p0, Lcom/htc/omadm/util/Setting$1;->this$0:Lcom/htc/omadm/util/Setting;

    #getter for: Lcom/htc/omadm/util/Setting;->EventHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/omadm/util/Setting;->access$300(Lcom/htc/omadm/util/Setting;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/omadm/util/Setting$1;->this$0:Lcom/htc/omadm/util/Setting;

    #getter for: Lcom/htc/omadm/util/Setting;->mTasks:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/htc/omadm/util/Setting;->access$200(Lcom/htc/omadm/util/Setting;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 660
    const-string v2, "Setting"

    const-string v3, "Device ID not ready, delay to retrieve it"

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-static {}, Lcom/htc/omadm/util/Setting;->access$108()I

    .line 677
    :goto_0
    return-void

    .line 665
    :cond_0
    iget-object v2, p0, Lcom/htc/omadm/util/Setting$1;->this$0:Lcom/htc/omadm/util/Setting;

    #getter for: Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/omadm/util/Setting;->access$400(Lcom/htc/omadm/util/Setting;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 667
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "ID_Device"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 671
    const-string v2, "Setting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device ID is ready, DeviceID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
