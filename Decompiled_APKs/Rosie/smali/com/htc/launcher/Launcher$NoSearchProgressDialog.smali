.class Lcom/htc/launcher/Launcher$NoSearchProgressDialog;
.super Landroid/app/ProgressDialog;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoSearchProgressDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/htc/launcher/Launcher;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 5344
    iput-object p1, p0, Lcom/htc/launcher/Launcher$NoSearchProgressDialog;->this$0:Lcom/htc/launcher/Launcher;

    .line 5345
    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 5346
    return-void
.end method


# virtual methods
.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 5350
    const/4 v0, 0x0

    return v0
.end method
