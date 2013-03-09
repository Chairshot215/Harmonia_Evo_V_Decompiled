.class Lcom/googlecode/android/wifi/tether/TetherApplication$4;
.super Ljava/lang/Object;
.source "TetherApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/android/wifi/tether/TetherApplication;->checkForUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/android/wifi/tether/TetherApplication;


# direct methods
.method constructor <init>(Lcom/googlecode/android/wifi/tether/TetherApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication$4;->this$0:Lcom/googlecode/android/wifi/tether/TetherApplication;

    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 720
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 722
    iget-object v6, p0, Lcom/googlecode/android/wifi/tether/TetherApplication$4;->this$0:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v6, v6, Lcom/googlecode/android/wifi/tether/TetherApplication;->webserviceTask:Lcom/googlecode/android/wifi/tether/system/WebserviceTask;

    const-string v7, "http://android-wifi-tether.googlecode.com/svn/download/update/wifi-tether/application.properties"

    invoke-virtual {v6, v7}, Lcom/googlecode/android/wifi/tether/system/WebserviceTask;->queryForProperty(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v4

    .line 723
    .local v4, updateProperties:Ljava/util/Properties;
    if-eqz v4, :cond_0

    const-string v6, "versionCode"

    invoke-virtual {v4, v6}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 725
    const-string v6, "versionCode"

    invoke-virtual {v4, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 726
    .local v0, availableVersion:I
    iget-object v6, p0, Lcom/googlecode/android/wifi/tether/TetherApplication$4;->this$0:Lcom/googlecode/android/wifi/tether/TetherApplication;

    invoke-virtual {v6}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getVersionNumber()I

    move-result v2

    .line 727
    .local v2, installedVersion:I
    const-string v6, "fileName"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 728
    .local v1, fileName:Ljava/lang/String;
    const-string v6, "message"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 729
    .local v3, updateMessage:Ljava/lang/String;
    const-string v6, "title"

    const-string v7, "Update available"

    invoke-virtual {v4, v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 730
    .local v5, updateTitle:Ljava/lang/String;
    if-eq v0, v2, :cond_0

    .line 731
    const-string v6, "TETHER -> TetherApplication"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Installed version \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' and available version \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' do not match!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    sget-object v6, Lcom/googlecode/android/wifi/tether/MainActivity;->currentInstance:Lcom/googlecode/android/wifi/tether/MainActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "http://android-wifi-tether.googlecode.com/files/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1, v3, v5}, Lcom/googlecode/android/wifi/tether/MainActivity;->openUpdateDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    .end local v0           #availableVersion:I
    .end local v1           #fileName:Ljava/lang/String;
    .end local v2           #installedVersion:I
    .end local v3           #updateMessage:Ljava/lang/String;
    .end local v5           #updateTitle:Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 737
    return-void
.end method
