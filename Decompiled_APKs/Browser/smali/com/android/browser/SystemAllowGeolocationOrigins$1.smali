.class Lcom/android/browser/SystemAllowGeolocationOrigins$1;
.super Ljava/lang/Object;
.source "SystemAllowGeolocationOrigins.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/SystemAllowGeolocationOrigins;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/SystemAllowGeolocationOrigins;


# direct methods
.method constructor <init>(Lcom/android/browser/SystemAllowGeolocationOrigins;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/browser/SystemAllowGeolocationOrigins$1;->this$0:Lcom/android/browser/SystemAllowGeolocationOrigins;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 88
    iget-object v7, p0, Lcom/android/browser/SystemAllowGeolocationOrigins$1;->this$0:Lcom/android/browser/SystemAllowGeolocationOrigins;

    #calls: Lcom/android/browser/SystemAllowGeolocationOrigins;->getSystemSetting()Ljava/lang/String;
    invoke-static {v7}, Lcom/android/browser/SystemAllowGeolocationOrigins;->access$000(Lcom/android/browser/SystemAllowGeolocationOrigins;)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, newSetting:Ljava/lang/String;
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/browser/BrowserSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 93
    .local v5, preferences:Landroid/content/SharedPreferences;
    const-string v7, "last_read_allow_geolocation_origins"

    const-string v8, ""

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, lastReadSetting:Ljava/lang/String;
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 116
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "last_read_allow_geolocation_origins"

    invoke-interface {v7, v8, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    #calls: Lcom/android/browser/SystemAllowGeolocationOrigins;->parseAllowGeolocationOrigins(Ljava/lang/String;)Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/browser/SystemAllowGeolocationOrigins;->access$100(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v4

    .line 107
    .local v4, oldOrigins:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    #calls: Lcom/android/browser/SystemAllowGeolocationOrigins;->parseAllowGeolocationOrigins(Ljava/lang/String;)Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/browser/SystemAllowGeolocationOrigins;->access$100(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v2

    .line 108
    .local v2, newOrigins:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/browser/SystemAllowGeolocationOrigins$1;->this$0:Lcom/android/browser/SystemAllowGeolocationOrigins;

    #calls: Lcom/android/browser/SystemAllowGeolocationOrigins;->setMinus(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    invoke-static {v7, v2, v4}, Lcom/android/browser/SystemAllowGeolocationOrigins;->access$200(Lcom/android/browser/SystemAllowGeolocationOrigins;Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 109
    .local v0, addedOrigins:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/browser/SystemAllowGeolocationOrigins$1;->this$0:Lcom/android/browser/SystemAllowGeolocationOrigins;

    #calls: Lcom/android/browser/SystemAllowGeolocationOrigins;->setMinus(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    invoke-static {v7, v4, v2}, Lcom/android/browser/SystemAllowGeolocationOrigins;->access$200(Lcom/android/browser/SystemAllowGeolocationOrigins;Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    .line 112
    .local v6, removedOrigins:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/browser/SystemAllowGeolocationOrigins$1;->this$0:Lcom/android/browser/SystemAllowGeolocationOrigins;

    #calls: Lcom/android/browser/SystemAllowGeolocationOrigins;->removeOrigins(Ljava/util/Set;)V
    invoke-static {v7, v6}, Lcom/android/browser/SystemAllowGeolocationOrigins;->access$300(Lcom/android/browser/SystemAllowGeolocationOrigins;Ljava/util/Set;)V

    .line 115
    iget-object v7, p0, Lcom/android/browser/SystemAllowGeolocationOrigins$1;->this$0:Lcom/android/browser/SystemAllowGeolocationOrigins;

    #calls: Lcom/android/browser/SystemAllowGeolocationOrigins;->addOrigins(Ljava/util/Set;)V
    invoke-static {v7, v0}, Lcom/android/browser/SystemAllowGeolocationOrigins;->access$400(Lcom/android/browser/SystemAllowGeolocationOrigins;Ljava/util/Set;)V

    goto :goto_0
.end method
