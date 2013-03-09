.class Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$1;
.super Ljava/lang/Object;
.source "ActivityMainExpandBrowser.java"

# interfaces
.implements Lcom/htc/album/AlbumMain/ActivityMainDropList$DropDownButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$1;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/widget/ImageButton;)V
    .locals 1
    .parameter "imb"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$1;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->collapseAll()V

    .line 130
    return-void
.end method
