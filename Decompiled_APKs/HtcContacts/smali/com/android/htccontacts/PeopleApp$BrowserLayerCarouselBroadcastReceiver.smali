.class Lcom/android/htccontacts/PeopleApp$BrowserLayerCarouselBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PeopleApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/PeopleApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrowserLayerCarouselBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/PeopleApp;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/PeopleApp;)V
    .locals 0
    .parameter

    .prologue
    .line 840
    iput-object p1, p0, Lcom/android/htccontacts/PeopleApp$BrowserLayerCarouselBroadcastReceiver;->this$0:Lcom/android/htccontacts/PeopleApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/PeopleApp;Lcom/android/htccontacts/PeopleApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 840
    invoke-direct {p0, p1}, Lcom/android/htccontacts/PeopleApp$BrowserLayerCarouselBroadcastReceiver;-><init>(Lcom/android/htccontacts/PeopleApp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 843
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 844
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.htc.laputa.HtcNavi.action.LOCATIONS_NAVI_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 845
    const-string v1, "isNaviOn"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/android/htccontacts/PeopleApp;->access$1202(Z)Z

    .line 847
    :cond_0
    return-void
.end method
