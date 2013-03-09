.class Lcom/htc/album/SocialNetwork/ActivityMainFriends$1;
.super Ljava/lang/Object;
.source "ActivityMainFriends.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetwork/ActivityMainFriends;->setButtonOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/ActivityMainFriends;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/ActivityMainFriends;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends$1;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainFriends;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainFriends$1;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainFriends;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ActivityMainFriends;->onButtonClickLogin()V

    .line 455
    return-void
.end method
