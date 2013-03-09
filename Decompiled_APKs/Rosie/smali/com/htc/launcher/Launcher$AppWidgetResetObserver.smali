.class Lcom/htc/launcher/Launcher$AppWidgetResetObserver;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppWidgetResetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 1
    .parameter

    .prologue
    .line 6415
    iput-object p1, p0, Lcom/htc/launcher/Launcher$AppWidgetResetObserver;->this$0:Lcom/htc/launcher/Launcher;

    .line 6416
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6417
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 6421
    iget-object v0, p0, Lcom/htc/launcher/Launcher$AppWidgetResetObserver;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->onAppWidgetReset()V
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$6900(Lcom/htc/launcher/Launcher;)V

    .line 6422
    return-void
.end method
