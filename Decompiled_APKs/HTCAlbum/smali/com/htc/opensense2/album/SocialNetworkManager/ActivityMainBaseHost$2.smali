.class Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$2;
.super Ljava/lang/Object;
.source "ActivityMainBaseHost.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->showProgressDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;


# direct methods
.method constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$2;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 228
    packed-switch p2, :pswitch_data_0

    .line 234
    :goto_0
    return v0

    .line 231
    :pswitch_0
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$2;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;

    const/16 v2, 0x2728

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 232
    const/4 v0, 0x1

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
