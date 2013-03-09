.class Lcom/htc/album/SocialNetwork/ActivitySearchView$1;
.super Ljava/lang/Object;
.source "ActivitySearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetwork/ActivitySearchView;->setButtonOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/ActivitySearchView;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/ActivitySearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView$1;->this$0:Lcom/htc/album/SocialNetwork/ActivitySearchView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView$1;->this$0:Lcom/htc/album/SocialNetwork/ActivitySearchView;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->onButtonClickLogin()V

    .line 511
    return-void
.end method
