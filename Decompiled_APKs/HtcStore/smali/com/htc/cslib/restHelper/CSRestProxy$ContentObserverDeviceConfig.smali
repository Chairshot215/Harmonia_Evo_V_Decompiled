.class Lcom/htc/cslib/restHelper/CSRestProxy$ContentObserverDeviceConfig;
.super Landroid/database/ContentObserver;
.source "CSRestProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cslib/restHelper/CSRestProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentObserverDeviceConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/cslib/restHelper/CSRestProxy;


# direct methods
.method public constructor <init>(Lcom/htc/cslib/restHelper/CSRestProxy;)V
    .locals 1
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/htc/cslib/restHelper/CSRestProxy$ContentObserverDeviceConfig;->this$0:Lcom/htc/cslib/restHelper/CSRestProxy;

    .line 595
    #getter for: Lcom/htc/cslib/restHelper/CSRestProxy;->handler_:Landroid/os/Handler;
    invoke-static {p1}, Lcom/htc/cslib/restHelper/CSRestProxy;->access$000(Lcom/htc/cslib/restHelper/CSRestProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 597
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 605
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/cslib/restHelper/CSRestProxy;->access$102(Z)Z

    .line 606
    return-void
.end method
