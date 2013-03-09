.class Lcom/htc/album/SocialNetwork/ActivityMainOnline$1;
.super Ljava/lang/Object;
.source "ActivityMainOnline.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetwork/ActivityMainOnline;->showDialogNoConnection()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/ActivityMainOnline;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/ActivityMainOnline;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/ActivityMainOnline$1;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainOnline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainOnline$1;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainOnline;

    #calls: Lcom/htc/album/SocialNetwork/ActivityMainOnline;->onLaunchSettings_Wireless()V
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->access$000(Lcom/htc/album/SocialNetwork/ActivityMainOnline;)V

    .line 110
    return-void
.end method
