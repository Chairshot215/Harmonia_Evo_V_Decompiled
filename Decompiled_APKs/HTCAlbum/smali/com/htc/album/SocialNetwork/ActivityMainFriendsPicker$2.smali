.class Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker$2;
.super Ljava/lang/Object;
.source "ActivityMainFriendsPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->showDialogNoConnection()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker$2;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 280
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v1, intent_tmp:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 282
    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 285
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker$2;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;

    invoke-virtual {v2, v1}, Lcom/htc/album/SocialNetwork/ActivityMainFriendsPicker;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 289
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
