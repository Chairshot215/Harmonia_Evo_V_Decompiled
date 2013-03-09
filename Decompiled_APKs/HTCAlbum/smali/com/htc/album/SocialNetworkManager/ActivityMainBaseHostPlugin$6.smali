.class Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$6;
.super Ljava/lang/Object;
.source "ActivityMainBaseHostPlugin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->showDialogNoConnection()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;)V
    .locals 0
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$6;->this$0:Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$6;->this$0:Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;

    #calls: Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->onLaunchSettings_Wireless()V
    invoke-static {v0}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->access$000(Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;)V

    .line 446
    return-void
.end method
